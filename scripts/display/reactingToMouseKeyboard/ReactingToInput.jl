using DrWatson
@quickactivate "Probabilistic medical segmentation"

module ReactingToInput
using Rocket
using GLFW
using Main.ReactToScroll
using Main.ForDisplayStructs
using Main.TextureManag
export subscribeGLFWtoActor


```@doc
adding the data into about openGL and GLFW context to enable proper display
```
function setUpMainDisplay(mainForDisplayObjects::Main.ForDisplayStructs.forDisplayObjects,actor::ActorWithOpenGlObjects)
    actor.mainForDisplayObjects=mainForDisplayObjects

end#setUpMainDisplay



setUpForScrollDataStr= """
adding the data about 3 dimensional arrays that will be source of data used for scrolling behaviour
onScroll Data - list of tuples where first is the name of the texture that we provided and second is associated data (3 dimensional array of appropriate type)

"""
@doc setUpForScrollDataStr
function setUpForScrollData(onScrollData::Vector{Tuple{String, Array{T, 3} where T}} ,actor::ActorWithOpenGlObjects)
    actor.onScrollData=onScrollData

end#setUpMainDisplay



updateSingleImagesDisplayedSetUpStr =    """
enables updating just a single slice that is displayed - do not change what will happen after scrolling
one need to pass data to actor in vector of tuples whee first entry in tuple is name of texture given in the setup and second is 2 dimensional aray of appropriate type with image data

"""
@doc updateSingleImagesDisplayedSetUpStr
function updateSingleImagesDisplayedSetUp(listOfDataAndImageNames::Vector{Tuple{String, Array{T, 2} where T}} ,actor::ActorWithOpenGlObjects)

updateImagesDisplayed(listOfDataAndImageNames, actor.mainForDisplayObjects)

end #updateSingleImagesDisplayed



"""
configuring actor using multiple dispatch mechanism in order to connect input to proper functions; this is not 
encapsulated by a function becouse this is configuration of Rocket and needs to be global
"""

Rocket.on_next!(actor::ActorWithOpenGlObjects, data::Bool) = reactToScroll(data,actor )
Rocket.on_next!(actor::ActorWithOpenGlObjects, data::Main.ForDisplayStructs.forDisplayObjects) = setUpMainDisplay(data,actor)
Rocket.on_next!(actor::ActorWithOpenGlObjects, data::Vector{Tuple{String, Array{T, 3} where T}}) = setUpForScrollData(data,actor)
Rocket.on_next!(actor::ActorWithOpenGlObjects, data::Vector{Tuple{String, Array{T, 2} where T}}) = updateSingleImagesDisplayedSetUp(data,actor)

Rocket.on_error!(actor::ActorWithOpenGlObjects, err)      = error(err)
Rocket.on_complete!(actor::ActorWithOpenGlObjects)        = println("Completed!")


```@doc
when GLFW context is ready we need to use this  function in order to register GLFW events to Rocket actor - we use subscription for this
    actor - Roctet actor that holds objects needed for display like window etc...  
    return list of subscriptions so if we will need it we can unsubscribe
```
function subscribeGLFWtoActor(actor ::ActorWithOpenGlObjects)
    #controll scrolling
    forDisplayConstants = actor.mainForDisplayObjects

    scrollback= Main.ReactToScroll.registerMouseScrollFunctions(forDisplayConstants.window,forDisplayConstants.stopListening)
    GLFW.SetScrollCallback(forDisplayConstants.window, (a, xoff, yoff) -> scrollback(a, xoff, yoff))
    scrollSubscription = subscribe!(scrollback, actor)

return [scrollSubscription]

end






end #ReactToGLFWInpuut