# Journal-2
## Client Introduction Meeting Sept.
### Questions regarding the project

This week, we discussed the notes I took during the meeting with Gabriel. Some parts were unclear, so during our team meeting, we decided to write down a couple of questions.

Here are the meeting notes and questions for the 23rd:


Project description: (from our understanding)

* User scans a QR code to join the single virtual group
* Each group will be able to play their project. When the user presses play, all the phones in that group will play the sound. All the other phones outside the group will not.
* Or if Gabriel wants to play the different audio one at a time continuously, then we’ll need one room,
* Give the student a JSON skeleton to get information such as amplitude (for ui purpose) and other information to help with connecting Mac with the project


Functions: 
* play button
* Pause button
* Users can choose which audio channel can play on which phone, how many phones, and for how long. (but this is done through the JSON files, where students must provide the information, aka. No true UI to let students control the sound once they’re in the virtual room) 

Requirement:
* Audio should be in sync as much as possible

If we have time:
* UI should have a flashing light according to audio amplitude
* Giroscope api

Question
* Is allowing students to fork the repo still a requirement 
* Step 1 proof of concept: Have multiple audio channels play on multiple phones, where we choose (the algo) for the user how the audio will be displayed 
    * Local host
    * Loading page to allow us to see how many phones are connected so it can know how to display the audio
* Are the phones intended to be stationary, and thus the sound is programmed to be emitted from a single, movable point rather than a room coordinate? Or is it to be programmed to a point in a room, and a participant carrying a phone will pick up and emit different sounds depending on where they are in the room with their phone?



We decided to reach out to Gabriel again and planned a virtual meeting on the 25th.

* Provide basic infrastructure and they’ll customize it
* Providing infrastructure
* We can have demo (basic repository), but if they want to have their own sound they need to fork it and host it on their github
* People will have access to repo, they’ll change the audio assets in repo, and they’ll work on developing score
* How people are going to orchestrate over time
There’s one maestro application
* Client - orchestrator 
* People will not be interacting with the sound
* We need to come up with some sort of the structure (could be a json file) that people are able to score in which moment and time certain moment 
* No MaxMSP no audio file Super simple boring robust sturdy UI

* Each team will fork our repo (our repo should be the skeleton/foundation for them to build off) and change its audio assets + developing the 'score'; Each team is therefore responsible for hosting their own website, we can have our own demo website 
* One maestro application = orchestrator: sends pings to other websites/teams (clients) to start playing? (Websockets) - different approaches: (1) scan qr code and download all assets?? and all sounds play at same time? idk lol OR (2) orchestrator sends pings all the time to dictate which phone plays
* All monophonic or stereo, not multichannel
Orchestrate all phones at same time for starters, improve by creating 'zones', dividing which phones play depending on XYZ (we decide). For now server is orchestrator, next iterations could be that its realtime, for this version it'll run hardcoded

* mono sonic or stereo
5 to 10 min each piece/ installation
* Not sending audio between devices through server, local?
So the maestro app is the one telling the server what the phones should play, it reads the score and pings the server and the server sends the cues to the phones
* Students will provide the sound assets and the score
* Simple UI that is customizable (this means making the FE easily editable and understandable. Add comments in the code)

**Task to do for the next week: provide url to gabriel that will play a file**

We decided to meet Gabriel at **10:30** virtually every Wednesday to check-in with him and ensure that we're on the track. 

After this meeting, I was a little bit concerned because I am not really familiar with the backend, and my part was the UI/UX. Gabriel wants a robust and simple UI and wants students to work on the UI. I'm not quite sure what to work on if the task for us is to create a simple and robust UI. If we have more time, I would like to ask Gabriel to work on the interactive part of the UI. However,  it is undecided yet.

After that, Jess shared a simple diagram explaining how the program should work (the image is in Jess's journal) and created a demo using render.
Explanation for the sketch:

```
For the sketch I drew:
- The students will provide a JSON that contains the information of how their piece should be played.
- It is the "Score" of the piece
- The JSON will contain the following information:
- The number of groups to divide the phones into
- The audio file names that will be played and in which group they should be played as well as the order
- The maestro interface will tell the server when to start the piece (e.g. on a button click)
- Maybe a visual indicator of how many clients are connected to the server
- The server will ping the connected clients to start playing the audio files.
- The clients will play the audio files based on the information provided in the JSON file.
- It will look at the queues from each group and play in the order of the queue.
```

Link for the demo (Jess will show it to us this Wednesday)
- https://jessicach4n.github.io/Distributed_Listening/

Sabrina and I went over the living learning contract in class, and I shared the slightly edited version during the class time last Wednesday. She shared that she went over the contract, and I plan to go over today and submit the finalized version of it before class.

