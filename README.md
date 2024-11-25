import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_reels_24/flutter_reels_24.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({ Key? key}) : super(key: key);

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Reels Viewer Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
);
}
}

class MyHomePage extends StatefulWidget {
    const MyHomePage({ Key? key}) : super(key: key);

@override
State < MyHomePage > createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    List<ReelModel> reelsList = [
        ReelModel(
            'https://assets.mixkit.co/videos/preview/mixkit-tree-with-yellow-flowers-1173-large.mp4',
            'Darshan Patil',
            likeCount: 2000,
            isLiked: true,
            musicName: 'In the name of Love',
            reelDescription: "Life is better when you're laughing.",
            profileUrl:
            'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
            commentList: [
            ReelCommentModel(
                comment: 'Nice...',
                userProfilePic:
                'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
                userName: 'Darshan',
                commentTime: DateTime.now(),
            ),
            ReelCommentModel(
                comment: 'Superr...',
                userProfilePic:
                'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
                userName: 'Darshan',
                commentTime: DateTime.now(),
            ),
            ReelCommentModel(
                comment: 'Great...',
                userProfilePic:
                'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
                userName: 'Darshan',
                commentTime: DateTime.now(),
            ),
        ]),
        ReelModel(
            'https://i.pinimg.com/236x/4f/02/e6/4f02e651dcf2eb93e2819a33cc60eeef.jpg',
            'Rahul',
            musicName: 'In the name of Love',
            reelDescription: "Life is better when you're laughing.",
            profileUrl:
            'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
        ),
        ReelModel(
            'This Flutter package enables you to build an Instagram-like Reels clone with a seamless interface to display content in a scrollable, interactive format. The package supports a variety of media types, including videos, images, and text content, making it perfect for social media applications or content-sharing platforms.',
            'Rahul',
        ),
    ];

    @override
Widget build(BuildContext context) {
        return ReelsViewer(
            reelsList: reelsList,
            appbarTitle: 'Instagram Reels',
            onShare: (url) {
                log('Shared reel url ==> $url');
            },
            onLike: (url) {
                log('Liked reel url ==> $url');
            },
            onFollow: () {
                log('======> Clicked on follow <======');
            },
            onComment: (comment) {
                log('Comment on reel ==> $comment');
            },
            onClickMoreBtn: () {
                log('======> Clicked on more option <======');
            },
            onClickBackArrow: () {
                log('======> Clicked on back arrow <======');
            },
            onIndexChanged: (index){
                log('======> Current Index ======> $index <========');
            },
            showProgressIndicator: true,
            showVerifiedTick: true,
            showAppbar: true,
        );
    }
}