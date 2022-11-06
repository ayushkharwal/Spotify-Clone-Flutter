import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:i_will_name_it_later/models/music.dart';

class MusicOperations {
  MusicOperations._() {}

  static List<Music> getAlbums() {
    return <Music>[
      Music(
        'My Dark Twisted Fantasy',
        'http://imgur.com/EqHFB.jpg',
        'Kanye\'s Magnum Opus.',
        UrlSource(
            'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview125/v4/67/62/c4/6762c44a-0061-f2dc-b0f1-14e112631292/mzaf_4777106222578519559.plus.aac.p.m4a'),
      ),
      Music(
        'To Pimp a Butterfly',
        'https://i.discogs.com/MrMLO9SrQ7V12VfH9bWr3D1ksKUpTGkDtNPuQXaSC8M/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTY3ODc0/MzktMTQyNjYxNzcx/NS03ODMxLmpwZWc.jpeg',
        'Kendrick Lamar created history with this one.',
        UrlSource(
            'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/73/a2/24/73a224a8-9aa7-5a7c-e369-c06aee28da80/mzaf_1866300536224236488.plus.aac.p.m4a'),
      ),
      Music(
        'Yeezus',
        'https://i.discogs.com/u3QFQD66pcbeSu1T93CuA6i6PixIaT3tUBWh0w2jaU4/rs:fit/g:sm/q:90/h:484/w:480/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQ4NDI2/OTItMTM4ODg0Mjkw/OC0xNDI3LmpwZWc.jpeg',
        'This masterpeice has sounds that is guaranted u\'ve never heard before.',
        UrlSource(
            'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/df/72/7a/df727a6e-4528-9c2c-2f56-eae749b349e6/mzaf_9588358575683787954.plus.aac.p.m4a'),
      ),
      Music(
        'The Off Season',
        'https://media.pitchfork.com/photos/609c2e93853a96fc7df31dec/1:1/w_600/J-Cole-The-Off-Season.jpg',
        'Latest and one of the best J Cole Albums.',
        UrlSource(
            'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/cb/ab/e8/cbabe8e6-baba-3d89-1ad5-97433e113d71/mzaf_8378323889686015625.plus.aac.p.m4a'),
      ),
      Music(
        'Nayaab',
        'https://images.genius.com/67b32746962542c64470f0f441e75ab3.1000x1000x1.jpg',
        'Seedhe Maut 2nd album which has songs that\'ll definately make u feel something.',
        UrlSource(
            'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/fe/5b/25/fe5b25aa-a0b9-3e5b-6326-71495e3291d2/mzaf_6169179165847219384.plus.aac.p.m4a'),
      ),
    ];
  }

  static List<Music> getPlaylists() {
    return <Music>[
      Music(
        'Top 50 India',
        'https://charts-images.scdn.co/assets/locale_en/regional/daily/region_in_large.jpg',
        'Your daily update of the most played tracks right now in India',
        UrlSource(''),
      ),
      Music(
        'Top 50 Global',
        'https://charts-images.scdn.co/assets/locale_en/regional/daily/region_global_large.jpg',
        'Your daily update of the most played tracks right now Globally',
        UrlSource(''),
      ),
      Music(
        'New Music',
        'https://assets1.sharedplaylists.cdn.crowds.dk/playlists/d4/c5/34/sz300x300_new-releases-1-7b68c94797.jpeg',
        'Stay update with all the smashing new hot music',
        UrlSource(''),
      ),
      Music(
        'Hot Hits',
        'https://i.scdn.co/image/ab67706f000000033676fcd91c7f3e300ccd6deb',
        'Tune into the most popular hits right now',
        UrlSource(''),
      ),
    ];
  }
}
