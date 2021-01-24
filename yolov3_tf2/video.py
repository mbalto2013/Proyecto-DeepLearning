

from pytube import YouTube 
YouTube('https://www.youtube.com/watch?v=adB8RW4I3o4').streams.first().download(filename='sample.avi') 
