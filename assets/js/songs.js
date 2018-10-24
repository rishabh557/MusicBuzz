var songsArray = [
	{
		'songId' : 1,
        'songName' : 'Something Just Like This',
        'songUrl' : 'https://freemusicdownloads.world/wp-content/uploads/2017/05/The-Chainsmokers-Coldplay-Something-Just-Like-This-Lyric.mp3',
        'songImage' : 'https://i1.sndcdn.com/artworks-000209740248-qtil5h-t500x500.jpg'
				
	},
	{
		'songId' : 2,
        'songName' : 'Har Har Gange',
        'songUrl' : "http://d.mp3load.vc/files/sfd147/73203/Har%20Har%20Gange_320(MyMp3Song).mp3",
        'songImage' : 'http://tabandchord.com/wp-content/uploads/2018/09/Har-Har-Gange-guitar-chords-Batti-Gul-Meter-Chalu-500x445.jpg'
		
	},
	
    {
        'songId' : 3,
        'songName' : 'Photograph - Ed Sheeran',
        'songUrl' :   'Photograph.mp3',
        'songImage' : 'https://i1.sndcdn.com/artworks-000147928287-0jnuag-t500x500.jpg'
    },
    {
        'songId' : 4,
        'songName' : 'Chall Mere Naal- ProfeC',
        'songUrl' :  'Chal Mere naal.mp3',
        'songImage' : 'https://i1.sndcdn.com/artworks-000098029213-84d139-t500x500.jpg'
    },
    {
        'songId' : 5,
        'songName' : 'Closer-The Chainsmokers',
        'songUrl' :  'Closer.mp3',
        'songImage' : 'https://m.media-amazon.com/images/M/MV5BY2NlNTZiYWUtYjZjYS00YmZiLTk2OGItODQzNGFhNzlkZTJhL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjE4MTAxNjU@._V1_.jpg'
    },
    {
        'songId' : 6,
        'songName' : 'Fursat - Arjun Kanungo',
        'songUrl' : ' Fursat.mp3',
        'songImage' : 'http://www.lyricsmint.com/wp-content/uploads/2016/03/fursat-arjun-kanungo-300x204.jpg'
    },
    {
        'songId' : 7,
        'songName' : 'One Love - Blue',
        'songUrl' : 'One Love.mp3',
        'songImage' :'https://images.shazam.com/coverart/t11180690-b724224735_s400.jpg'
    },
    {
        'songId' : 8,
        'songName' : 'Rang Sawla - Arsh Benipal',
        'songUrl' :  'Rang Sawla.mp3',
        'songImage' : 'https://images.shazam.com/coverart/t127060097-b1176107801_s400.jpg'
    },
    {
        'songId' : 9,
        'songName' : 'Taur-ProfeC',
        'songUrl' : 'Taur.mp3',
        'songImage' : 'https://c.saavncdn.com/012/Taur-English-2015-500x500.jpg'
    },
    {
        'songId' : 10,
        'songName' : 'Tujhse - Mickey',
        'songUrl' : 'Tujhse.mp3',
        'songImage' : 'https://images.shazam.com/coverart/t315474557-b1136586598_s400.jpg'
    },
    {
        'songId' : 11,
        'songName' : 'Aankhon - Honey Singh',
        'songUrl' :  'Aankhon.mp3',
        'songImage' : 'http://www.ecstaseakaraokemusic.com/images/song/15111007521280x720-Ei3.jpg'
    },
    {
        'songId' : 12,
        'songName' : 'Cold Water - Justin Beiber',
        'songUrl' : 'Cold Water.mp3',
        'songImage' : 'data:image/jpeg;base64,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'
    },
    {
        'songId' : 13,
        'songName' : 'Pee Jaon - Farhan Saaed',
        'songUrl' :   'Pee.mp3',
        'songImage' : 'https://i.ytimg.com/vi/aNpxUT6trEQ/hqdefault.jpg'
    },
    {
        'songId' : 14,
        'songName' : 'Chogada - Darshan Rawal',
        'songUrl' :   'http://2017.downloadming2018.com/temp/Loveratri%20(2018)/01%20-%20Chogada%20(320%20Kbps)%20-%20DownloadMing.SE.mp3',
        'songImage' : 'http://mrjatt.app/wp-content/uploads/2018/09/Chogada-Asees-KaurDarshan-Raval-hindi-hindi-album.jpg'
    },
    {
        'songId' : 15,
        'songName' : 'Dekhte Dekhte - Atif Aslam',
        'songUrl' :   'http://djpaji.xyz/siteuploads/files/sfd4/1732/Kya%20Se%20Kya%20Ho%20Gaye%20Dekhte%20Dekhte_320(DjPaji.Com).mp3',
        'songImage' : 'https://djpaji.me/siteuploads/thumb/c/560_2.jpg'
    },
    {
        'songId' : 16,
        'songName' : 'Tose Naina Jabse Mile - Arijit Singh',
        'songUrl' :   'https://c3vrag1h.amfwamkgc2foawi.today/320/oggim/Tose+Naina.mp3',
        'songImage' : 'https://content.hungama.com/audio%20album/display%20image/300x300%20jpeg/72702972.jpg'
    }
    
]