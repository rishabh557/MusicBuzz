window.addEventListener("load", initPlayer);

var audio;
var togglePlay = false;
var togglePlayButton;
var slider;

function initPlayer(){
    audio = document.getElementById("audio");
    audio1 = document.getElementById("audioPlayer");
    
    var ul = document.getElementById("songs");
    slider = document.getElementById("slider");
    slider.addEventListener("click", seekSong);
    togglePlayButton = document.getElementById("playPause");
    togglePlayButton.addEventListener("click", toggleSong);
    document.getElementById("stopSong").addEventListener("click", stopSong);
    document.getElementById("nextSong").addEventListener("click", nextSong);
    document.getElementById("previousSong").addEventListener("click", previousSong);
    document.getElementById("t1").addEventListener("click", t1);
    document.getElementById("t2").addEventListener("click", t2);
    document.getElementById("t3").addEventListener("click", t3);
    document.getElementById("t4").addEventListener("click", t4);
   document.getElementById("t5").addEventListener("click", t5);
  document.getElementById("t6").addEventListener("click", t6);
     document.getElementById("t7").addEventListener("click", t7);
    document.getElementById("t8").addEventListener("click", t8);
    document.getElementById("t9").addEventListener("click", t9);
    document.getElementById("t10").addEventListener("click", t10);






    for(var i = 0; i < songsArray.length; i++) {
        var li = document.createElement("li");
        var span = document.createElement("span");
        var img = document.createElement("img");
        var playIcon = document.createElement("button");
      //  var btn = document.createElement("button");
        span.innerHTML = songsArray[i].songName;
        span.setAttribute('title', songsArray[i].songId);
        img.setAttribute('src', songsArray[i].songImage);
        img.className = "cover rounded border-dark";
       
        // btn.innerHTML = '<i class="fas fa-plus"></i>';
       // btn.innerHTML = "Add to playlist";
       // btn.className = "btn btn-primary playListBtn d-block w-100";
        playIcon.className = 'playIcon';
        // playIcon.innerHTML = '<i class="fas fa-play"></i>';
        // li.className = 'list-group-item';
        li.appendChild(img);
        li.appendChild(span);
       // li.appendChild(btn);
        li.appendChild(playIcon);
        //span.addEventListener("click", setSongName);
        img.addEventListener("click", setSongName);
        playIcon.addEventListener("click", setSongName);
        ul.appendChild(li);
      //  btn.addEventListener("click", addToPlaylist);
    }

}
function setSongName(){
    

    // console.log(event.srcElement.parentElement.childNodes[0].innerText);
    songName = event.srcElement.parentElement.childNodes[1].innerText;
    playSong(songName);
}

function playSong(songName){
    
    console.log("Song change");
    var disp = document.getElementById("disp");

 

    var songURL;
    for(var i = 0; i < songsArray.length; i++){
        if(songsArray[i].songName == songName){
            songURL = songsArray[i].songUrl;
            audio.title = songsArray[i].songId;
          
        }
    }
    togglePlayButton.innerHTML = '<i class="fas fa-pause"></i>';
    audio.src = songURL;
    audio.play();
    // var sliderWidth = slider.offsetWidth;
    setInterval(function(){
        slider.value = audio.currentTime;
    },100);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}

function seekSong(){
    audio.currentTime = slider.value;
}

function nextSong(){
    var songId = audio.title;
    var n_song = parseInt(songId)+1;
    var songName;
    console.log(n_song);
    for(var i = 0; i < songsArray.length; i++){
        if(songsArray[i].songId == n_song) {
            songName = songsArray[i].songName;
            console.log(n_song, songName);
        }
    }
    playSong(songName);
}

function previousSong(){
    var songId = audio.title;
    var n_song = parseInt(songId)-1;
    var songName;
    console.log(n_song);
    for(var i = 0; i < songsArray.length; i++){
        if(songsArray[i].songId == n_song) {
            songName = songsArray[i].songName;
            console.log(n_song, songName);
        }
    }
    playSong(songName);

}

function toggleSong(){
    if(togglePlay) {
        audio.play();
        togglePlayButton.innerHTML = '<i class="fas fa-pause"></i>';
        togglePlay = false;
    }
    else {
        audio.pause();
        togglePlayButton.innerHTML = '<i class="fas fa-play"></i>';
        togglePlay = true;
    }
}

function stopSong(){
    audio.currentTime = 0;
    audio.pause();
}



function addToPlaylist(){
    var songId = event.srcElement.parentElement.childNodes[1].title;
    for(var i = 0; i < songsArray.length; i++){
        if(songsArray[i].songId == songId) {
            obj.addSong(songsArray[i].songId,
                        songsArray[i].songName,
                        songsArray[i].songUrl,
                        songsArray[i].songImage);
        }
    }
    showPlayList();
}

function showPlayList(){
    var ul = document.getElementById("playList");
    ul.innerHTML = "";
    console.log("playlist function");
    obj.playList.forEach(function(s){
        console.log("Creating playlist");
        var li = document.createElement("li");
        var span = document.createElement("span");
        var img = document.createElement("img");
        var playIcon = document.createElement("button");
        var btn = document.createElement("button");
        span.innerHTML = s.name;
        img.setAttribute('src', s.songimage);
        img.className = "cover";
        btn.innerHTML = '<i class="fas fa-trash"></i>';
        btn.className = "btn btn-primary deleteBtn";
        playIcon.className = 'playIcon';
        li.className = "list-group-item";
        li.appendChild(img);
        li.appendChild(span);
        li.appendChild(btn);
        li.appendChild(playIcon);
        span.addEventListener("click", setSongName);
        playIcon.addEventListener("click", setSongName);
        ul.appendChild(li);
        btn.addEventListener("click", addToPlaylist);
    })   
}
// Week List Songs
function t1(){
    audio.src="http://djpaji.com/siteuploads/files/sfd2/705/Aaya%20Na%20Tu(DjPaji.Com).mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}
function t2(){
    audio.src="http://dl.wapbestwap.com/load/MP3_Songs/2018%20Bollywood/Satyameva%20Jayate%20Mp3%20Songs%20(2018)/Dilbar%20Mp3%20Song%20-%20Satyameva%20Jayate/Dilbar%20-%20Satyameva%20Jayate%20320%20Kbps.mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}
function t3(){
    audio.src="http://mixmusic.in/files/uploads/6/16/2834/320KBPS/Tareefan-320Kbps(MixMusic.in).mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}
function t4(){
    audio.src="http://dl.wapbestwap.com/load/MP3_Songs/2018%20Bollywood/Dhadak%20Mp3%20Songs%20(2018)/Dhadak%20-%20Title%20Mp3%20Song/Dhadak%20-%20Title%20Song%20320%20Kbps.mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}
function t5(){
    audio.src="http://moviesfantasyworld.com/wp-content/uploads/2018/06/Kar-Har-Maidaan-Fateh-Lyrical-Sanju-Ranbir-Kapoor-Rajkumar-Hirani-Sukhwinder-Singh-Shreya.mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}
function t6(){
    audio.src="http://dl.wapbestwap.com/load/MP3_Songs/Pop_Songs/Pop%20Songs%202018/Buzz%20Mp3%20Song%20-%20Aastha%20Gill%20feat%20Badshah/Buzz%20Song%20-%20Aastha%20Gill%20And%20Badshah%20320%20Kbps.mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}
function t7(){
    audio.src="http://cdn.mr-song.in/siteuploads//files/sfd1/250/O%20Saathi%20-%20Baaghi%202_192-(Mr-Song.Com).mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}

function t8(){
    audio.src="https://raagjatt.com/songs/320/53692/Bom%20Diggy%20Diggy%20Bom%20(Remix)%20(RaagJatt.com).mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}
function t9(){
    audio.src="http://cdn.mr-song.in/siteuploads//files/sfd1/466/Ishq%20Di%20Baajiyaan%20-%20Soorma-(Mr-Song.Com).mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}
function t10(){
    audio.src="http://dl.wapbestwap.com/load/MP3_Songs/2018%20Bollywood/Raazi%20Mp3%20(2018)/Dilbaro%20Mp3%20Song%20-%20Raazi/Dilbaro%20-%20Raazi%20320%20Kbps.mp3";
    audio.play();
    setInterval(function(){
        slider.value = audio.currentTime;
    },500);
    setTimeout(function(){
        var duration = audio.duration;
        slider.max = duration;
    },200);
}