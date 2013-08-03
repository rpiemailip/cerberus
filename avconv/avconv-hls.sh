#!/bin/bash

# encapsulate an h264 acc video in a mpegts container
# and the stream it via udp to a mac and open the stream with the mediasteam segmenter for hls streaming

avconv -i video.mp4 -vcodec copy -acodec copy -bsf h264_mp4toannexb -f mpegts udp://192.168.1.7:1234?pkt_size=1316

