.class public Landroid/media/OppoMediaScanner;
.super Ljava/lang/Object;
.source "OppoMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/OppoMediaScanner$WplHandler;,
        Landroid/media/OppoMediaScanner$MediaBulkDeleter;,
        Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;,
        Landroid/media/OppoMediaScanner$PlaylistEntry;,
        Landroid/media/OppoMediaScanner$FileEntry;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final ENABLE_FILES_CACHE:Z = true

.field private static final ENABLE_FILES_CACHE_FIRST_SCAN:Z = true

.field private static final ENABLE_FILES_CACHE_SECOND_SCAN:Z = true

.field private static final ENABLE_IGNORE_NOMEDIA:Z = true

.field private static final ENABLE_MULTI_THREAD:Z = false

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String; = null

.field private static final ID3_GENRES:[Ljava/lang/String; = null

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final LOG:Z = false

.field private static final MULTI_THREAD_FOR_AUDIO:Z = true

.field private static final MULTI_THREAD_FOR_IMAGE:Z = false

.field private static final MULTI_THREAD_FOR_VIDEO:Z = true

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String; = null

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field private static final TAG:Ljava/lang/String; = "OppoMediaScanner"

.field private static final THREAD_POOL_ALIVE_TIME:I = 0x1e

.field private static final THREAD_POOL_CORE_SIZE:I = 0x0

.field private static final THREAD_POOL_MAX_SIZE:I = 0x2

.field private static final sKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private mCaseInsensitivePaths:Z

.field private final mClient:Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;

.field private mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationFilenameSIM2:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultNotificationSetSIM2:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDefaultRingtoneSetSIM2:Z

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mExternalIsEmulated:Z

.field private final mExternalStoragePath:Ljava/lang/String;

.field private mFilesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/OppoMediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesUri:Landroid/net/Uri;

.field private mImagesUri:Landroid/net/Uri;

.field private mLocale:Ljava/lang/String;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private mMediaProvider:Landroid/content/IContentProvider;

.field private mMtpObjectHandle:I

.field private mNativeContext:I

.field private mOriginalCount:I

.field private mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/OppoMediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/OppoMediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaylistsUri:Landroid/net/Uri;

.field private mPrimarySdPath:Ljava/lang/String;

.field private mProcessGenres:Z

.field private mProcessPlaylists:Z

.field private mScanFlag:I

.field private mScanningDirectory:Ljava/lang/String;

.field private mSecondarySdPath:Ljava/lang/String;

.field private mThumbsUri:Landroid/net/Uri;

.field private mVideoUri:Landroid/net/Uri;

.field private mWasEmptyPriorToScan:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/OppoMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 156
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/OppoMediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 165
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "playlist_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/media/OppoMediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 179
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v3

    const-string v1, "Classic Rock"

    aput-object v1, v0, v4

    const-string v1, "Country"

    aput-object v1, v0, v5

    const-string v1, "Dance"

    aput-object v1, v0, v2

    const-string v1, "Disco"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/OppoMediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 2251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    .line 2255
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "album"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2256
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "artist"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2257
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "albumartist"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2258
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "composer"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "compilation"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2261
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "year"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2262
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "genre"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2263
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "tracknumber"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2264
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "width"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "height"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "title"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    sget-object v0, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    const-string v1, "isdrm"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-boolean v2, p0, Landroid/media/OppoMediaScanner;->mWasEmptyPriorToScan:Z

    .line 380
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 470
    new-instance v0, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;-><init>(Landroid/media/OppoMediaScanner;Landroid/media/OppoMediaScanner$1;)V

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mClient:Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;

    .line 2274
    iput v2, p0, Landroid/media/OppoMediaScanner;->mScanFlag:I

    .line 2275
    iput-boolean v2, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneSetSIM2:Z

    .line 2276
    iput-boolean v2, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationSetSIM2:Z

    .line 431
    iput-object p1, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    .line 432
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 433
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 435
    invoke-direct {p0}, Landroid/media/OppoMediaScanner;->setDefaultRingtoneFileNames()V

    .line 437
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mExternalStoragePath:Ljava/lang/String;

    .line 438
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/OppoMediaScanner;->mExternalIsEmulated:Z

    .line 443
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->isExternalSDRemoved(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mPrimarySdPath:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mSecondarySdPath:Ljava/lang/String;

    .line 451
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->getExternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mPrimarySdPath:Ljava/lang/String;

    .line 448
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mSecondarySdPath:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-static {p0}, Landroid/media/OppoMediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/media/OppoMediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Landroid/media/OppoMediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Landroid/media/OppoMediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/OppoMediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/media/OppoMediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/media/OppoMediaScanner;)Landroid/media/MediaInserter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/OppoMediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/media/OppoMediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/media/OppoMediaScanner;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Landroid/media/OppoMediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic access$2002(Landroid/media/OppoMediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/media/OppoMediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationSetSIM2:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/media/OppoMediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationSetSIM2:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/media/OppoMediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/media/OppoMediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic access$2500(Landroid/media/OppoMediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneSetSIM2:Z

    return v0
.end method

.method static synthetic access$2602(Landroid/media/OppoMediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneSetSIM2:Z

    return p1
.end method

.method static synthetic access$2700(Landroid/media/OppoMediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/media/OppoMediaScanner;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Landroid/media/OppoMediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/media/OppoMediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mCaseInsensitivePaths:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/media/OppoMediaScanner;)Landroid/content/IContentProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/OppoMediaScanner;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/media/OppoMediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Landroid/media/OppoMediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/OppoMediaScanner;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mFilesCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic access$600(Landroid/media/OppoMediaScanner;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/OppoMediaScanner;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Landroid/media/OppoMediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic access$800(Landroid/media/OppoMediaScanner;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mExternalIsEmulated:Z

    return v0
.end method

.method static synthetic access$900(Landroid/media/OppoMediaScanner;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mExternalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "line"
    .parameter "playListDirectory"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1978
    new-instance v1, Landroid/media/OppoMediaScanner$PlaylistEntry;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Landroid/media/OppoMediaScanner$PlaylistEntry;-><init>(Landroid/media/OppoMediaScanner$1;)V

    .line 1980
    .local v1, entry:Landroid/media/OppoMediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1981
    .local v2, entryLength:I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1984
    :cond_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 1999
    :goto_1
    return-void

    .line 1985
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1989
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1990
    .local v0, ch1:C
    const/16 v5, 0x2f

    if-eq v0, v5, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4

    :cond_3
    move v3, v4

    .line 1993
    .local v3, fullPath:Z
    :cond_4
    if-nez v3, :cond_5

    .line 1994
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1995
    :cond_5
    iput-object p1, v1, Landroid/media/OppoMediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 1998
    iget-object v4, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkOppoDefaultValue(Ljava/lang/String;)V
    .locals 13
    .parameter "strTag"

    .prologue
    const/4 v4, 0x1

    const/4 v12, 0x0

    .line 2523
    iget-object v1, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2524
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2525
    .local v7, defaultFileName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2526
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 2527
    .local v8, id:I
    const/4 v10, 0x0

    .line 2528
    .local v10, uriDatabases:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 2530
    .local v11, uriSettings:Landroid/net/Uri;
    if-eqz p1, :cond_0

    .line 2531
    const-string v1, "oppo_default_notification"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2532
    iget-object v7, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 2544
    :cond_0
    :goto_0
    if-nez v7, :cond_6

    .line 2545
    const-string v1, "OppoMediaScanner"

    const-string v2, "checkOppoDefaultValue() strTag=%s is invalid."

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v12

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_1
    :goto_1
    return-void

    .line 2533
    :cond_2
    const-string v1, "oppo_default_notification_sim2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2534
    iget-object v7, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;

    goto :goto_0

    .line 2535
    :cond_3
    const-string v1, "oppo_default_ringtone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2536
    iget-object v7, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    goto :goto_0

    .line 2537
    :cond_4
    const-string v1, "oppo_default_ringtone_sim2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2538
    iget-object v7, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

    goto :goto_0

    .line 2539
    :cond_5
    const-string v1, "oppo_default_alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2540
    iget-object v7, p0, Landroid/media/OppoMediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    goto :goto_0

    .line 2553
    :cond_6
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string v3, "_display_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2558
    if-eqz v6, :cond_8

    .line 2559
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 2560
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2561
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2562
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v8

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2565
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2569
    :cond_8
    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2570
    .local v9, strTemp:Ljava/lang/String;
    if-eqz v9, :cond_9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2571
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2577
    :cond_9
    if-nez v10, :cond_a

    .line 2578
    if-eqz v11, :cond_1

    .line 2579
    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 2582
    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v11, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2583
    :cond_b
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1
.end method

.method private checkOppoDefaultValues()V
    .locals 9

    .prologue
    .line 2511
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2512
    .local v0, beginTime:J
    const-string v4, "oppo_default_notification"

    invoke-direct {p0, v4}, Landroid/media/OppoMediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2513
    const-string v4, "oppo_default_notification_sim2"

    invoke-direct {p0, v4}, Landroid/media/OppoMediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2514
    const-string v4, "oppo_default_ringtone"

    invoke-direct {p0, v4}, Landroid/media/OppoMediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2515
    const-string v4, "oppo_default_ringtone_sim2"

    invoke-direct {p0, v4}, Landroid/media/OppoMediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2516
    const-string v4, "oppo_default_alarm"

    invoke-direct {p0, v4}, Landroid/media/OppoMediaScanner;->checkOppoDefaultValue(Ljava/lang/String;)V

    .line 2517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 2518
    .local v2, timeCost:J
    const-string v4, "OppoMediaScanner"

    const-string v5, "checkOppoDefaultValues() time cost: %sms"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    return-void
.end method

.method private inScanDirectory(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3
    .parameter "path"
    .parameter "directories"

    .prologue
    .line 1490
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 1491
    aget-object v0, p2, v1

    .line 1492
    .local v0, directory:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1493
    const/4 v2, 0x1

    .line 1496
    .end local v0           #directory:Ljava/lang/String;
    :goto_1
    return v2

    .line 1490
    .restart local v0       #directory:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1496
    .end local v0           #directory:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 3
    .parameter "volumeName"

    .prologue
    const/4 v2, 0x1

    .line 1609
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1611
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 1612
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 1613
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 1614
    invoke-static {p1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1615
    invoke-static {p1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1617
    const-string v0, "internal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    iput-boolean v2, p0, Landroid/media/OppoMediaScanner;->mProcessPlaylists:Z

    .line 1619
    iput-boolean v2, p0, Landroid/media/OppoMediaScanner;->mProcessGenres:Z

    .line 1620
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 1622
    iput-boolean v2, p0, Landroid/media/OppoMediaScanner;->mCaseInsensitivePaths:Z

    .line 1624
    :cond_0
    return-void
.end method

.method private isDrmEnabled()Z
    .locals 2

    .prologue
    .line 473
    const-string v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, prop:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1731
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1732
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    .line 1761
    :cond_0
    :goto_0
    return v1

    .line 1737
    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1738
    .local v7, lastSlash:I
    if-ltz v7, :cond_3

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1740
    add-int/lit8 v0, v7, 0x1

    const-string v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1747
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1748
    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1752
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1753
    .local v8, length:I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    const-string v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-ne v8, v9, :cond_3

    add-int/lit8 v2, v7, 0x1

    const-string v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .end local v8           #length:I
    :cond_3
    move v1, v4

    .line 1761
    goto :goto_0
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1765
    if-nez p0, :cond_0

    .line 1808
    :goto_0
    return v4

    .line 1769
    :cond_0
    const-string v6, "/storage/sdcard0"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/storage/sdcard0/external_sd"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1770
    new-instance v1, Ljava/io/File;

    const-string v6, ".nomedia"

    invoke-direct {v1, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 1772
    goto :goto_0

    .line 1778
    .end local v1           #file:Ljava/io/File;
    :cond_1
    const-string v6, "/."

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_2

    move v4, v5

    goto :goto_0

    .line 1782
    :cond_2
    const/4 v2, 0x1

    .line 1783
    .local v2, offset:I
    :goto_1
    if-ltz v2, :cond_5

    .line 1784
    const/16 v6, 0x2f

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1785
    .local v3, slashIndex:I
    if-le v3, v2, :cond_3

    .line 1786
    add-int/lit8 v3, v3, 0x1

    .line 1787
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".nomedia"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1788
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1796
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1797
    .local v0, dirPath:Ljava/lang/String;
    const-string v6, "/storage/sdcard0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "/storage/sdcard0/external_sd"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1806
    .end local v0           #dirPath:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :cond_3
    move v2, v3

    .line 1807
    goto :goto_1

    .restart local v0       #dirPath:Ljava/lang/String;
    .restart local v1       #file:Ljava/io/File;
    :cond_4
    move v4, v5

    .line 1801
    goto :goto_0

    .line 1808
    .end local v0           #dirPath:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #slashIndex:I
    :cond_5
    invoke-static {p0}, Landroid/media/OppoMediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private isOtherFiles(Ljava/lang/String;)Z
    .locals 3
    .parameter "filename"

    .prologue
    const/4 v1, 0x0

    .line 2589
    if-nez p1, :cond_1

    .line 2600
    :cond_0
    :goto_0
    return v1

    .line 2592
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 2593
    .local v0, upFileName:Ljava/lang/String;
    const-string v2, ".APK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".CSV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".ICS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".VCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".VCF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2598
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .parameter "rowId"
    .parameter "data"

    .prologue
    const v6, 0x7fffffff

    .line 1954
    iget-object v5, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1955
    .local v3, len:I
    const/4 v0, 0x1

    .line 1956
    .local v0, done:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1957
    iget-object v5, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/OppoMediaScanner$PlaylistEntry;

    .line 1958
    .local v1, entry:Landroid/media/OppoMediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/OppoMediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 1956
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1961
    :cond_1
    const/4 v0, 0x0

    .line 1962
    iget-object v5, v1, Landroid/media/OppoMediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1963
    iput-wide p1, v1, Landroid/media/OppoMediaScanner$PlaylistEntry;->bestmatchid:J

    .line 1964
    iput v6, v1, Landroid/media/OppoMediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 1968
    :cond_2
    iget-object v5, v1, Landroid/media/OppoMediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/OppoMediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1969
    .local v4, matchLength:I
    iget v5, v1, Landroid/media/OppoMediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 1970
    iput-wide p1, v1, Landroid/media/OppoMediaScanner$PlaylistEntry;->bestmatchid:J

    .line 1971
    iput v4, v1, Landroid/media/OppoMediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 1974
    .end local v1           #entry:Landroid/media/OppoMediaScanner$PlaylistEntry;
    .end local v4           #matchLength:I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .parameter "path1"
    .parameter "path2"

    .prologue
    .line 1927
    const/4 v10, 0x0

    .line 1928
    .local v10, result:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1929
    .local v8, end1:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1931
    .local v9, end2:I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 1932
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1933
    .local v11, slash1:I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1934
    .local v12, slash2:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1935
    .local v6, backSlash1:I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1936
    .local v7, backSlash2:I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 1937
    .local v2, start1:I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 1938
    .local v4, start2:I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 1939
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 1940
    :goto_4
    sub-int v5, v8, v2

    .line 1941
    .local v5, length:I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 1949
    .end local v2           #start1:I
    .end local v4           #start2:I
    .end local v5           #length:I
    .end local v6           #backSlash1:I
    .end local v7           #backSlash2:I
    .end local v11           #slash1:I
    .end local v12           #slash2:I
    :cond_0
    return v10

    .restart local v6       #backSlash1:I
    .restart local v7       #backSlash2:I
    .restart local v11       #slash1:I
    .restart local v12       #slash2:I
    :cond_1
    move v2, v6

    .line 1936
    goto :goto_1

    .restart local v2       #start1:I
    :cond_2
    move v4, v7

    .line 1937
    goto :goto_2

    .line 1938
    .restart local v4       #start2:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1939
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1942
    .restart local v5       #length:I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    add-int/lit8 v10, v10, 0x1

    .line 1944
    add-int/lit8 v8, v2, -0x1

    .line 1945
    add-int/lit8 v9, v4, -0x1

    .line 1947
    goto :goto_0
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 3
    .parameter "directories"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1589
    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1590
    invoke-direct {p0}, Landroid/media/OppoMediaScanner;->processPlayLists()V

    .line 1593
    :cond_0
    iget v0, p0, Landroid/media/OppoMediaScanner;->mOriginalCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1594
    invoke-direct {p0}, Landroid/media/OppoMediaScanner;->pruneDeadThumbnailFiles()V

    .line 1597
    :cond_1
    iput-object v2, p0, Landroid/media/OppoMediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1598
    iput-object v2, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    .line 1601
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mFilesCache:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 1602
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mFilesCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1603
    iput-object v2, p0, Landroid/media/OppoMediaScanner;->mFilesCache:Ljava/util/HashMap;

    .line 1606
    :cond_2
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 33
    .parameter "filePath"
    .parameter "prescanFiles"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1308
    const/16 v23, 0x0

    .line 1309
    .local v23, c:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 1310
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1318
    .local v6, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mFilesCache:Ljava/util/HashMap;

    if-nez v2, :cond_6

    .line 1319
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/OppoMediaScanner;->mFilesCache:Ljava/util/HashMap;

    .line 1326
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mPlayLists:Ljava/util/ArrayList;

    if-nez v2, :cond_7

    .line 1327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/OppoMediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 1332
    :goto_1
    if-eqz p1, :cond_8

    .line 1334
    const-string v5, "_id>? AND _data=?"

    .line 1336
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v6, v2

    const/4 v2, 0x1

    aput-object p1, v6, v2

    .line 1385
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v22

    .line 1386
    .local v22, builder:Landroid/net/Uri$Builder;
    const-string v2, "deletedata"

    const-string v4, "false"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1387
    new-instance v24, Landroid/media/OppoMediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v4}, Landroid/media/OppoMediaScanner$MediaBulkDeleter;-><init>(Landroid/content/IContentProvider;Landroid/net/Uri;)V

    .line 1391
    .local v24, deleter:Landroid/media/OppoMediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_3

    .line 1396
    const-wide/high16 v28, -0x8000

    .line 1397
    .local v28, lastId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "check_hidden"

    const-string v14, "false"

    invoke-virtual {v2, v4, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "limit"

    const-string v14, "1000"

    invoke-virtual {v2, v4, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1399
    .local v3, limitUri:Landroid/net/Uri;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/OppoMediaScanner;->mWasEmptyPriorToScan:Z

    .line 1402
    :cond_1
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 1403
    if-eqz v23, :cond_2

    .line 1404
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1405
    const/16 v23, 0x0

    .line 1407
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v4, Landroid/media/OppoMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v7, "_id"

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v23

    .line 1409
    if-nez v23, :cond_10

    .line 1474
    .end local v3           #limitUri:Landroid/net/Uri;
    .end local v28           #lastId:J
    :cond_3
    if-eqz v23, :cond_4

    .line 1475
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1477
    :cond_4
    invoke-virtual/range {v24 .. v24}, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->flush()V

    .line 1481
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/OppoMediaScanner;->mOriginalCount:I

    .line 1482
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/OppoMediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v16, Landroid/media/OppoMediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-interface/range {v14 .. v20}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v23

    .line 1483
    if-eqz v23, :cond_5

    .line 1484
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/OppoMediaScanner;->mOriginalCount:I

    .line 1485
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1487
    :cond_5
    return-void

    .line 1321
    .end local v22           #builder:Landroid/net/Uri$Builder;
    .end local v24           #deleter:Landroid/media/OppoMediaScanner$MediaBulkDeleter;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mFilesCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1329
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 1338
    :cond_8
    const-string v5, "_id>?"

    .line 1339
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #selectionArgs:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v6, v2

    .line 1342
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    const/16 v21, 0x0

    .line 1343
    .local v21, bAppended:Z
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/OppoMediaScanner;->mScanFlag:I

    if-eqz v2, :cond_0

    .line 1344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND ( "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1345
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/OppoMediaScanner;->mScanFlag:I

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_9

    .line 1346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "media_type=2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1348
    const/16 v21, 0x1

    .line 1350
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/OppoMediaScanner;->mScanFlag:I

    and-int/lit8 v2, v2, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_b

    .line 1351
    if-eqz v21, :cond_a

    .line 1352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1354
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "media_type=3"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1356
    const/16 v21, 0x1

    .line 1358
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/OppoMediaScanner;->mScanFlag:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    .line 1359
    if-eqz v21, :cond_c

    .line 1360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1362
    :cond_c
    const/16 v21, 0x1

    .line 1363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "media_type=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1366
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/OppoMediaScanner;->mScanFlag:I

    and-int/lit8 v2, v2, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_f

    .line 1367
    if-eqz v21, :cond_e

    .line 1368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " OR "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1370
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_data LIKE \'%.apk\' OR _data LIKE \'%.csv\' OR _data LIKE \'%.vcf\' OR _data LIKE \'%.ics\' OR _data LIKE \'%.vcs\' "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1376
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1413
    .end local v21           #bAppended:Z
    .restart local v3       #limitUri:Landroid/net/Uri;
    .restart local v22       #builder:Landroid/net/Uri$Builder;
    .restart local v24       #deleter:Landroid/media/OppoMediaScanner$MediaBulkDeleter;
    .restart local v28       #lastId:J
    :cond_10
    :try_start_1
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v31

    .line 1415
    .local v31, num:I
    if-eqz v31, :cond_3

    .line 1418
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/OppoMediaScanner;->mWasEmptyPriorToScan:Z

    .line 1419
    :cond_11
    :goto_3
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1420
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1421
    .local v8, rowId:J
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1422
    .local v10, path:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1423
    .local v13, format:I
    const/4 v2, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1424
    .local v11, lastModified:J
    move-wide/from16 v28, v8

    .line 1429
    if-eqz v10, :cond_11

    const-string v2, "/"

    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_11

    .line 1430
    const/16 v25, 0x0

    .line 1432
    .local v25, exists:Z
    :try_start_2
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Llibcore/io/OsConstants;->F_OK:I

    invoke-interface {v2, v10, v4}, Llibcore/io/Os;->access(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v25

    .line 1435
    :goto_4
    if-nez v25, :cond_12

    :try_start_3
    invoke-static {v13}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1440
    invoke-static {v10}, Landroid/media/OppoMediaFile;->getFileType(Ljava/lang/String;)Landroid/media/OppoMediaFile$MediaFileType;

    move-result-object v30

    .line 1441
    .local v30, mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    if-nez v30, :cond_15

    const/16 v26, 0x0

    .line 1443
    .local v26, fileType:I
    :goto_5
    invoke-static/range {v26 .. v26}, Landroid/media/OppoMediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1444
    move-object/from16 v0, v24

    invoke-virtual {v0, v8, v9}, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1445
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v10, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/.nomedia"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1446
    invoke-virtual/range {v24 .. v24}, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->flush()V

    .line 1447
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v32

    .line 1448
    .local v32, parent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const-string v4, "unhide"

    const/4 v14, 0x0

    move-object/from16 v0, v32

    invoke-interface {v2, v4, v0, v14}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1455
    .end local v26           #fileType:I
    .end local v30           #mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    .end local v32           #parent:Ljava/lang/String;
    :cond_12
    if-eqz v25, :cond_11

    .line 1456
    move-object/from16 v27, v10

    .line 1457
    .local v27, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/media/OppoMediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v2, :cond_13

    .line 1458
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    .line 1461
    :cond_13
    new-instance v7, Landroid/media/OppoMediaScanner$FileEntry;

    invoke-direct/range {v7 .. v13}, Landroid/media/OppoMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 1462
    .local v7, entry:Landroid/media/OppoMediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mFilesCache:Ljava/util/HashMap;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1474
    .end local v3           #limitUri:Landroid/net/Uri;
    .end local v7           #entry:Landroid/media/OppoMediaScanner$FileEntry;
    .end local v8           #rowId:J
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #lastModified:J
    .end local v13           #format:I
    .end local v25           #exists:Z
    .end local v27           #key:Ljava/lang/String;
    .end local v31           #num:I
    :catchall_0
    move-exception v2

    if-eqz v23, :cond_14

    .line 1475
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 1477
    :cond_14
    invoke-virtual/range {v24 .. v24}, Landroid/media/OppoMediaScanner$MediaBulkDeleter;->flush()V

    throw v2

    .line 1441
    .restart local v3       #limitUri:Landroid/net/Uri;
    .restart local v8       #rowId:J
    .restart local v10       #path:Ljava/lang/String;
    .restart local v11       #lastModified:J
    .restart local v13       #format:I
    .restart local v25       #exists:Z
    .restart local v30       #mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    .restart local v31       #num:I
    :cond_15
    :try_start_4
    move-object/from16 v0, v30

    iget v0, v0, Landroid/media/OppoMediaFile$MediaFileType;->fileType:I

    move/from16 v26, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    .line 1433
    .end local v30           #mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 11
    .parameter "fileList"
    .parameter "values"
    .parameter "playlistUri"

    .prologue
    .line 2002
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2003
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2004
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2005
    .local v6, rowId:J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2006
    .local v0, data:Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/OppoMediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2011
    .end local v0           #data:Ljava/lang/String;
    .end local v6           #rowId:J
    :cond_1
    iget-object v8, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2012
    .local v5, len:I
    const/4 v4, 0x0

    .line 2013
    .local v4, index:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 2014
    iget-object v8, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/OppoMediaScanner$PlaylistEntry;

    .line 2015
    .local v2, entry:Landroid/media/OppoMediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/OppoMediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 2017
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 2018
    const-string v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2019
    const-string v8, "audio_id"

    iget-wide v9, v2, Landroid/media/OppoMediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2020
    iget-object v8, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v8, p3, p2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2021
    add-int/lit8 v4, v4, 0x1

    .line 2013
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2022
    :catch_0
    move-exception v1

    .line 2023
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "OppoMediaScanner"

    const-string v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2029
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #entry:Landroid/media/OppoMediaScanner$PlaylistEntry;
    :goto_1
    return-void

    .line 2028
    :cond_3
    iget-object v8, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 21
    .parameter "path"
    .parameter "client"

    .prologue
    .line 2305
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mScanningDirectory:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mSecondarySdPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mScanningDirectory:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/OppoMediaScanner;->mPrimarySdPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mSecondarySdPath:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2387
    :cond_0
    return-void

    .line 2314
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/media/OppoMediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v9

    .line 2315
    .local v9, noMedia:Z
    if-nez v9, :cond_0

    .line 2321
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2322
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v20

    .line 2324
    .local v20, subFiles:[Ljava/lang/String;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v2, v0

    if-lez v2, :cond_0

    .line 2325
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v18, v0

    .line 2326
    .local v18, len:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v14, v0, :cond_0

    .line 2327
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v4, v20, v14

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2329
    .local v3, newPath:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2330
    .local v19, newFile:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2331
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2332
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/OppoMediaScanner;->mScanFlag:I

    if-nez v2, :cond_2

    .line 2333
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mClient:Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    .line 2335
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Landroid/media/OppoMediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 2326
    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2337
    :cond_4
    const/4 v15, 0x0

    .line 2338
    .local v15, isAudio:Z
    const/16 v17, 0x0

    .line 2339
    .local v17, isVideo:Z
    const/16 v16, 0x0

    .line 2341
    .local v16, isImage:Z
    invoke-static {v3}, Landroid/media/OppoMediaFile;->getFileType(Ljava/lang/String;)Landroid/media/OppoMediaFile$MediaFileType;

    move-result-object v12

    .line 2342
    .local v12, fileType:Landroid/media/OppoMediaFile$MediaFileType;
    if-eqz v12, :cond_5

    .line 2343
    iget v2, v12, Landroid/media/OppoMediaFile$MediaFileType;->fileType:I

    invoke-static {v2}, Landroid/media/OppoMediaFile;->isAudioFileType(I)Z

    move-result v15

    .line 2344
    iget v2, v12, Landroid/media/OppoMediaFile$MediaFileType;->fileType:I

    invoke-static {v2}, Landroid/media/OppoMediaFile;->isVideoFileType(I)Z

    move-result v17

    .line 2345
    iget v2, v12, Landroid/media/OppoMediaFile$MediaFileType;->fileType:I

    invoke-static {v2}, Landroid/media/OppoMediaFile;->isImageFileType(I)Z

    move-result v16

    .line 2355
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/OppoMediaScanner;->mScanFlag:I

    .line 2356
    .local v13, flag:I
    const/4 v10, 0x0

    .line 2357
    .local v10, bCareAbout:Z
    if-nez v13, :cond_6

    .line 2358
    const/4 v10, 0x1

    .line 2360
    :cond_6
    if-nez v10, :cond_7

    and-int/lit8 v2, v13, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    if-eqz v15, :cond_7

    .line 2362
    const/4 v10, 0x1

    .line 2364
    :cond_7
    if-nez v10, :cond_8

    and-int/lit8 v2, v13, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    if-eqz v17, :cond_8

    .line 2366
    const/4 v10, 0x1

    .line 2368
    :cond_8
    if-nez v10, :cond_9

    and-int/lit8 v2, v13, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    if-eqz v16, :cond_9

    .line 2370
    const/4 v10, 0x1

    .line 2372
    :cond_9
    if-nez v10, :cond_a

    and-int/lit8 v2, v13, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/media/OppoMediaScanner;->isOtherFiles(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2374
    const/4 v10, 0x1

    .line 2376
    :cond_a
    if-eqz v10, :cond_3

    .line 2377
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mClient:Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    goto :goto_1
.end method

.method private processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 8
    .parameter "path"
    .parameter "mimeType"
    .parameter "client"

    .prologue
    .line 2390
    const/4 v3, 0x0

    .line 2395
    .local v3, retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    :try_start_0
    new-instance v4, Lcom/oppo/media/OppoMediaMetadataRetriever;

    invoke-direct {v4}, Lcom/oppo/media/OppoMediaMetadataRetriever;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2396
    .end local v3           #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .local v4, retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    :try_start_1
    iget-object v6, p0, Landroid/media/OppoMediaScanner;->mLocale:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 2397
    iget-object v6, p0, Landroid/media/OppoMediaScanner;->mLocale:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/oppo/media/OppoMediaMetadataRetriever;->setLocale(Ljava/lang/String;)V

    .line 2399
    :cond_0
    invoke-virtual {v4, p1}, Lcom/oppo/media/OppoMediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 2401
    sget-object v6, Landroid/media/OppoMediaScanner;->sKeyMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2402
    .local v2, iterator:Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 2403
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 2404
    .local v5, tag:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2405
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/Map$Entry;

    .line 2406
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/oppo/media/OppoMediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    .line 2407
    if-eqz v5, :cond_1

    .line 2408
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p3, v6, v5}, Landroid/media/MediaScannerClient;->handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2411
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v5           #tag:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 2412
    .end local v4           #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .local v0, e:Ljava/lang/Exception;
    .restart local v3       #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    :goto_1
    :try_start_2
    const-string v6, "OppoMediaScanner"

    const-string v7, "processFile process failed!"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2414
    if-eqz v3, :cond_2

    .line 2415
    invoke-virtual {v3}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 2416
    const/4 v3, 0x0

    .line 2419
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 2414
    .end local v3           #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2       #iterator:Ljava/util/Iterator;
    .restart local v4       #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v5       #tag:Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_5

    .line 2415
    invoke-virtual {v4}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 2416
    const/4 v3, 0x0

    .end local v4           #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v3       #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    goto :goto_2

    .line 2414
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v5           #tag:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_4

    .line 2415
    invoke-virtual {v3}, Lcom/oppo/media/OppoMediaMetadataRetriever;->release()V

    .line 2416
    const/4 v3, 0x0

    :cond_4
    throw v6

    .line 2414
    .end local v3           #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v4       #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v3       #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    goto :goto_3

    .line 2411
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v3           #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v2       #iterator:Ljava/util/Iterator;
    .restart local v4       #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v5       #tag:Ljava/lang/String;
    :cond_5
    move-object v3, v4

    .end local v4           #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    .restart local v3       #retriever:Lcom/oppo/media/OppoMediaMetadataRetriever;
    goto :goto_2
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "fileList"

    .prologue
    .line 2033
    const/4 v3, 0x0

    .line 2035
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2036
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2037
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2039
    .end local v3           #reader:Ljava/io/BufferedReader;
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2040
    .local v2, line:Ljava/lang/String;
    iget-object v5, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2041
    :goto_0
    if-eqz v2, :cond_1

    .line 2043
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 2044
    invoke-direct {p0, v2, p2}, Landroid/media/OppoMediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2049
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/OppoMediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v3, v4

    .line 2055
    .end local v2           #line:Ljava/lang/String;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    .line 2056
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2061
    .end local v1           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2057
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2058
    .local v0, e:Ljava/io/IOException;
    const-string v5, "OppoMediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2051
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2052
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v5, "OppoMediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2055
    if-eqz v3, :cond_3

    .line 2056
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2057
    :catch_2
    move-exception v0

    .line 2058
    const-string v5, "OppoMediaScanner"

    const-string v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2054
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 2055
    :goto_3
    if-eqz v3, :cond_4

    .line 2056
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2059
    :cond_4
    :goto_4
    throw v5

    .line 2057
    :catch_3
    move-exception v0

    .line 2058
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "OppoMediaScanner"

    const-string v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2054
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v1       #f:Ljava/io/File;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 2051
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/OppoMediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 17
    .parameter "entry"
    .parameter "fileList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2161
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/media/OppoMediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 2162
    .local v2, path:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2163
    .local v5, values:Landroid/content/ContentValues;
    const/16 v1, 0x2f

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 2164
    .local v9, lastSlash:I
    if-gez v9, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bad path "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2166
    :cond_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/media/OppoMediaScanner$FileEntry;->mRowId:J

    .line 2169
    .local v12, rowId:J
    const-string v1, "name"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2170
    .local v11, name:Ljava/lang/String;
    if-nez v11, :cond_1

    .line 2171
    const-string v1, "title"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2172
    if-nez v11, :cond_1

    .line 2174
    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 2175
    .local v8, lastDot:I
    if-gez v8, :cond_3

    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 2180
    .end local v8           #lastDot:I
    :cond_1
    :goto_0
    const-string v1, "name"

    invoke-virtual {v5, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    const-string v1, "date_modified"

    move-object/from16 v0, p1

    iget-wide v15, v0, Landroid/media/OppoMediaScanner$FileEntry;->mLastModified:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2183
    const-wide/16 v15, 0x0

    cmp-long v1, v12, v15

    if-nez v1, :cond_4

    .line 2184
    const-string v1, "_data"

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/OppoMediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-interface {v1, v6, v5}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v14

    .line 2186
    .local v14, uri:Landroid/net/Uri;
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 2187
    const-string v1, "members"

    invoke-static {v14, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2197
    .local v4, membersUri:Landroid/net/Uri;
    :goto_1
    const/4 v1, 0x0

    add-int/lit8 v6, v9, 0x1

    invoke-virtual {v2, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2198
    .local v3, playListDirectory:Ljava/lang/String;
    invoke-static {v2}, Landroid/media/OppoMediaFile;->getFileType(Ljava/lang/String;)Landroid/media/OppoMediaFile$MediaFileType;

    move-result-object v10

    .line 2199
    .local v10, mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    if-nez v10, :cond_5

    const/4 v7, 0x0

    .line 2200
    .local v7, fileType:I
    :goto_2
    const-string v1, "OppoMediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " processPlayList step2 filetype="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " constant OppoMediaFile.FILE_TYPE_M3U="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v15, 0x29

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const/16 v1, 0x29

    if-ne v7, v1, :cond_6

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 2203
    invoke-direct/range {v1 .. v6}, Landroid/media/OppoMediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 2209
    :cond_2
    :goto_3
    return-void

    .line 2175
    .end local v3           #playListDirectory:Ljava/lang/String;
    .end local v4           #membersUri:Landroid/net/Uri;
    .end local v7           #fileType:I
    .end local v10           #mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    .end local v14           #uri:Landroid/net/Uri;
    .restart local v8       #lastDot:I
    :cond_3
    add-int/lit8 v1, v9, 0x1

    invoke-virtual {v2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 2189
    .end local v8           #lastDot:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/OppoMediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {v1, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2190
    .restart local v14       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-interface {v1, v14, v5, v6, v15}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2193
    const-string v1, "members"

    invoke-static {v14, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2194
    .restart local v4       #membersUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-interface {v1, v4, v6, v15}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2199
    .restart local v3       #playListDirectory:Ljava/lang/String;
    .restart local v10       #mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    :cond_5
    iget v7, v10, Landroid/media/OppoMediaFile$MediaFileType;->fileType:I

    goto :goto_2

    .line 2204
    .restart local v7       #fileType:I
    :cond_6
    const/16 v1, 0x2a

    if-ne v7, v1, :cond_7

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 2205
    invoke-direct/range {v1 .. v6}, Landroid/media/OppoMediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 2206
    :cond_7
    const/16 v1, 0x2b

    if-ne v7, v1, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    .line 2207
    invoke-direct/range {v1 .. v6}, Landroid/media/OppoMediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2212
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2213
    .local v9, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/OppoMediaScanner$FileEntry;>;"
    const/4 v8, 0x0

    .line 2217
    .local v8, fileList:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/OppoMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v3, "media_type=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 2219
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2220
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/OppoMediaScanner$FileEntry;

    .line 2222
    .local v7, entry:Landroid/media/OppoMediaScanner$FileEntry;
    iget-boolean v0, v7, Landroid/media/OppoMediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 2223
    invoke-direct {p0, v7, v8}, Landroid/media/OppoMediaScanner;->processPlayList(Landroid/media/OppoMediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2226
    .end local v7           #entry:Landroid/media/OppoMediaScanner$FileEntry;
    :catch_0
    move-exception v0

    .line 2228
    if-eqz v8, :cond_1

    .line 2229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2232
    :cond_1
    :goto_1
    return-void

    .line 2228
    :cond_2
    if-eqz v8, :cond_1

    .line 2229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2228
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 2229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "fileList"

    .prologue
    .line 2065
    const/4 v4, 0x0

    .line 2067
    .local v4, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2068
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2069
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2071
    .end local v4           #reader:Ljava/io/BufferedReader;
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 2072
    .local v3, line:Ljava/lang/String;
    iget-object v6, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2073
    :goto_0
    if-eqz v3, :cond_1

    .line 2075
    const-string v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2076
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 2077
    .local v1, equals:I
    if-lez v1, :cond_0

    .line 2078
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/OppoMediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    .end local v1           #equals:I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 2084
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/OppoMediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v5

    .line 2090
    .end local v3           #line:Ljava/lang/String;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 2091
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2096
    .end local v2           #f:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 2092
    .restart local v2       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2093
    .local v0, e:Ljava/io/IOException;
    const-string v6, "OppoMediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2086
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2087
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v6, "OppoMediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2090
    if-eqz v4, :cond_3

    .line 2091
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 2092
    :catch_2
    move-exception v0

    .line 2093
    const-string v6, "OppoMediaScanner"

    const-string v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2089
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 2090
    :goto_3
    if-eqz v4, :cond_4

    .line 2091
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2094
    :cond_4
    :goto_4
    throw v6

    .line 2092
    :catch_3
    move-exception v0

    .line 2093
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "OppoMediaScanner"

    const-string v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2089
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v2       #f:Ljava/io/File;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 2086
    .end local v4           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #reader:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 7
    .parameter "path"
    .parameter "playListDirectory"
    .parameter "uri"
    .parameter "values"
    .parameter "fileList"

    .prologue
    .line 2134
    const/4 v2, 0x0

    .line 2136
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2137
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2138
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2140
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v4, p0, Landroid/media/OppoMediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2141
    const-string v4, "UTF-8"

    invoke-static {v4}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v4

    new-instance v5, Landroid/media/OppoMediaScanner$WplHandler;

    invoke-direct {v5, p0, p2, p3, p5}, Landroid/media/OppoMediaScanner$WplHandler;-><init>(Landroid/media/OppoMediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v5}, Landroid/media/OppoMediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 2144
    invoke-direct {p0, p5, p4, p3}, Landroid/media/OppoMediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-object v2, v3

    .line 2152
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_0
    if-eqz v2, :cond_1

    .line 2153
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2158
    .end local v1           #f:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2154
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2155
    .local v0, e:Ljava/io/IOException;
    const-string v4, "OppoMediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2146
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #f:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2147
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2152
    if-eqz v2, :cond_1

    .line 2153
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2154
    :catch_2
    move-exception v0

    .line 2155
    .local v0, e:Ljava/io/IOException;
    const-string v4, "OppoMediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2148
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 2149
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2152
    if-eqz v2, :cond_1

    .line 2153
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2154
    :catch_4
    move-exception v0

    .line 2155
    const-string v4, "OppoMediaScanner"

    const-string v5, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2151
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 2152
    :goto_3
    if-eqz v2, :cond_2

    .line 2153
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 2156
    :cond_2
    :goto_4
    throw v4

    .line 2154
    :catch_5
    move-exception v0

    .line 2155
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "OppoMediaScanner"

    const-string v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2151
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2148
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 2146
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 15

    .prologue
    const/4 v2, 0x0

    .line 1500
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1507
    .local v9, existingFiles:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oppo/os/OppoUsbEnvironment;->getInternalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1509
    .local v8, directory:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    .line 1510
    .local v11, files:[Ljava/lang/String;
    if-nez v11, :cond_0

    .line 1511
    new-array v11, v2, [Ljava/lang/String;

    .line 1513
    :cond_0
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    array-length v0, v11

    if-ge v13, v0, :cond_1

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1515
    .local v12, fullPathString:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1513
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1519
    .end local v12           #fullPathString:Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/OppoMediaScanner;->mThumbsUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 1525
    .local v7, c:Landroid/database/Cursor;
    const-string v0, "OppoMediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1528
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1529
    .restart local v12       #fullPathString:Ljava/lang/String;
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1530
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1533
    .end local v12           #fullPathString:Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1537
    .local v10, fileToDelete:Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1538
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1542
    .end local v10           #fileToDelete:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v0, "OppoMediaScanner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    if-eqz v7, :cond_5

    .line 1544
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1549
    .end local v7           #c:Landroid/database/Cursor;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    return-void

    .line 1546
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private scanFileInNewThread(Ljava/lang/String;JJZZ)V
    .locals 9
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 2475
    iget-object v1, p0, Landroid/media/OppoMediaScanner;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 2476
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 2481
    :cond_0
    new-instance v0, Landroid/media/OppoMediaScanner$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/media/OppoMediaScanner$1;-><init>(Landroid/media/OppoMediaScanner;Ljava/lang/String;JJZZ)V

    .line 2488
    .local v0, task:Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/media/OppoMediaScanner;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2489
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 454
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 456
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 459
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 463
    const-string v0, "ro.config.ringtone_sim2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultRingtoneFilenameSIM2:Ljava/lang/String;

    .line 465
    const-string v0, "ro.config.notification_sim2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/OppoMediaScanner;->mDefaultNotificationFilenameSIM2:Ljava/lang/String;

    .line 468
    return-void
.end method

.method private shutdownAndAwaitTermination(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .parameter "pool"

    .prologue
    .line 2492
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 2494
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2499
    const-wide/16 v1, 0x3c

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2500
    :catch_0
    move-exception v0

    .line 2501
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "OppoMediaScanner"

    const-string v2, "some exception happened in awaitTermination!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2503
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 2507
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public extractAlbumArt(Ljava/io/FileDescriptor;)[B
    .locals 6
    .parameter "fd"

    .prologue
    .line 2426
    const/4 v1, 0x0

    .line 2450
    .local v1, result:[B
    const/4 v2, 0x0

    .line 2453
    .local v2, scanner:Landroid/media/MediaScanner;
    :try_start_0
    new-instance v3, Landroid/media/MediaScanner;

    iget-object v4, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2454
    .end local v2           #scanner:Landroid/media/MediaScanner;
    .local v3, scanner:Landroid/media/MediaScanner;
    :try_start_1
    iget-object v4, p0, Landroid/media/OppoMediaScanner;->mLocale:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2455
    iget-object v4, p0, Landroid/media/OppoMediaScanner;->mLocale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 2457
    :cond_0
    invoke-virtual {v3, p1}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 2461
    if-eqz v3, :cond_3

    .line 2462
    const/4 v2, 0x0

    .line 2463
    .end local v3           #scanner:Landroid/media/MediaScanner;
    .restart local v2       #scanner:Landroid/media/MediaScanner;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2467
    :cond_1
    :goto_0
    return-object v1

    .line 2458
    :catch_0
    move-exception v0

    .line 2459
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "OppoMediaScanner"

    const-string v5, "extractAlbumArt failed!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2461
    if-eqz v2, :cond_1

    .line 2462
    const/4 v2, 0x0

    .line 2463
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 2461
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 2462
    const/4 v2, 0x0

    .line 2463
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_2
    throw v4

    .line 2461
    .end local v2           #scanner:Landroid/media/MediaScanner;
    .restart local v3       #scanner:Landroid/media/MediaScanner;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #scanner:Landroid/media/MediaScanner;
    .restart local v2       #scanner:Landroid/media/MediaScanner;
    goto :goto_2

    .line 2458
    .end local v2           #scanner:Landroid/media/MediaScanner;
    .restart local v3       #scanner:Landroid/media/MediaScanner;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #scanner:Landroid/media/MediaScanner;
    .restart local v2       #scanner:Landroid/media/MediaScanner;
    goto :goto_1

    .end local v2           #scanner:Landroid/media/MediaScanner;
    .restart local v3       #scanner:Landroid/media/MediaScanner;
    :cond_3
    move-object v2, v3

    .end local v3           #scanner:Landroid/media/MediaScanner;
    .restart local v2       #scanner:Landroid/media/MediaScanner;
    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 2246
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 2247
    return-void
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/OppoMediaScanner$FileEntry;
    .locals 14
    .parameter "path"

    .prologue
    .line 1871
    const/4 v12, 0x0

    .line 1873
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v13, 0x1

    .line 1875
    .local v13, hasWildCards:Z
    :goto_0
    if-nez v13, :cond_1

    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mCaseInsensitivePaths:Z

    if-nez v0, :cond_6

    .line 1880
    :cond_1
    const-string v3, "_data=?"

    .line 1881
    .local v3, where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 1888
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/OppoMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 1890
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v13, :cond_2

    iget-boolean v0, p0, Landroid/media/OppoMediaScanner;->mCaseInsensitivePaths:Z

    if-eqz v0, :cond_2

    .line 1895
    const-string v3, "_data LIKE ?1 AND lower(_data)=lower(?1)"

    .line 1896
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 1897
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1898
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/OppoMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    .line 1903
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1904
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1905
    .local v6, rowId:J
    const/4 v0, 0x2

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1906
    .local v11, format:I
    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1909
    .local v9, lastModified:J
    if-eqz v12, :cond_3

    .line 1910
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1911
    const/4 v12, 0x0

    .line 1914
    :cond_3
    new-instance v5, Landroid/media/OppoMediaScanner$FileEntry;

    move-object v8, p1

    invoke-direct/range {v5 .. v11}, Landroid/media/OppoMediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    if-eqz v12, :cond_4

    .line 1919
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1922
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v6           #rowId:J
    .end local v9           #lastModified:J
    .end local v11           #format:I
    .end local v13           #hasWildCards:Z
    :cond_4
    :goto_2
    return-object v5

    .line 1873
    :cond_5
    const/4 v13, 0x0

    goto :goto_0

    .line 1885
    .restart local v13       #hasWildCards:Z
    :cond_6
    :try_start_1
    const-string v3, "_data LIKE ?1 AND lower(_data)=lower(?1)"

    .line 1886
    .restart local v3       #where:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_1

    .line 1918
    :cond_7
    if-eqz v12, :cond_8

    .line 1919
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1922
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v13           #hasWildCards:Z
    :cond_8
    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    .line 1916
    :catch_0
    move-exception v0

    .line 1918
    if-eqz v12, :cond_8

    .line 1919
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1918
    :catchall_0
    move-exception v0

    if-eqz v12, :cond_9

    .line 1919
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "directories"
    .parameter "volumeName"

    .prologue
    .line 1634
    :try_start_0
    const-string v11, "external"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1635
    const/4 v11, 0x0

    aget-object v11, p1, v11

    iput-object v11, p0, Landroid/media/OppoMediaScanner;->mScanningDirectory:Ljava/lang/String;

    .line 1640
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1641
    .local v9, start:J
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/media/OppoMediaScanner;->initialize(Ljava/lang/String;)V

    .line 1642
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Landroid/media/OppoMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1647
    .local v5, prescan:J
    new-instance v11, Landroid/media/MediaInserter;

    iget-object v12, p0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    const/16 v13, 0x1f4

    invoke-direct {v11, v12, v13}, Landroid/media/MediaInserter;-><init>(Landroid/content/IContentProvider;I)V

    iput-object v11, p0, Landroid/media/OppoMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1652
    const-string v11, "internal"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1653
    invoke-direct {p0}, Landroid/media/OppoMediaScanner;->checkOppoDefaultValues()V

    .line 1657
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v4, v11, :cond_2

    .line 1658
    aget-object v11, p1, v4

    iget-object v12, p0, Landroid/media/OppoMediaScanner;->mClient:Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;

    invoke-direct {p0, v11, v12}, Landroid/media/OppoMediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1657
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1671
    :cond_2
    iget-object v11, p0, Landroid/media/OppoMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v11}, Landroid/media/MediaInserter;->flushAll()V

    .line 1672
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/media/OppoMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1676
    .local v7, scan:J
    invoke-direct/range {p0 .. p1}, Landroid/media/OppoMediaScanner;->postscan([Ljava/lang/String;)V

    .line 1677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1687
    .local v2, end:J
    const-string v11, "OppoMediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " prescan time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v5, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    const-string v11, "OppoMediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "    scan time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v7, v5

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const-string v11, "OppoMediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "postscan time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v2, v7

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    const-string v11, "OppoMediaScanner"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "   total time: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v13, v2, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1701
    .end local v2           #end:J
    .end local v4           #i:I
    .end local v5           #prescan:J
    .end local v7           #scan:J
    .end local v9           #start:J
    :goto_1
    return-void

    .line 1692
    :catch_0
    move-exception v1

    .line 1694
    .local v1, e:Landroid/database/SQLException;
    const-string v11, "OppoMediaScanner"

    const-string v12, "SQLException in OppoMediaScanner.scan()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1695
    .end local v1           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v1

    .line 1697
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    const-string v11, "OppoMediaScanner"

    const-string v12, "UnsupportedOperationException in OppoMediaScanner.scan()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1698
    .end local v1           #e:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v1

    .line 1699
    .local v1, e:Landroid/os/RemoteException;
    const-string v11, "OppoMediaScanner"

    const-string v12, "RemoteException in OppoMediaScanner.scan()"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 20
    .parameter "path"
    .parameter "volumeName"
    .parameter "objectHandle"
    .parameter "format"

    .prologue
    .line 1812
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/OppoMediaScanner;->initialize(Ljava/lang/String;)V

    .line 1813
    invoke-static/range {p1 .. p1}, Landroid/media/OppoMediaFile;->getFileType(Ljava/lang/String;)Landroid/media/OppoMediaFile$MediaFileType;

    move-result-object v17

    .line 1814
    .local v17, mediaFileType:Landroid/media/OppoMediaFile$MediaFileType;
    if-nez v17, :cond_1

    const/16 v16, 0x0

    .line 1815
    .local v16, fileType:I
    :goto_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1816
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 1818
    .local v5, lastModifiedSeconds:J
    invoke-static/range {v16 .. v16}, Landroid/media/OppoMediaFile;->isAudioFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/media/OppoMediaFile;->isVideoFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/media/OppoMediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/media/OppoMediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v16 .. v16}, Landroid/media/OppoMediaFile;->isDrmFileType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1823
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1824
    .local v18, values:Landroid/content/ContentValues;
    const-string v2, "_size"

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1825
    const-string v2, "date_modified"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1827
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v2

    .line 1828
    .local v19, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id=?"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1865
    .end local v5           #lastModifiedSeconds:J
    .end local v18           #values:Landroid/content/ContentValues;
    .end local v19           #whereArgs:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 1814
    .end local v14           #file:Ljava/io/File;
    .end local v16           #fileType:I
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/OppoMediaFile$MediaFileType;->fileType:I

    move/from16 v16, v0

    goto :goto_0

    .line 1830
    .restart local v5       #lastModifiedSeconds:J
    .restart local v14       #file:Ljava/io/File;
    .restart local v16       #fileType:I
    .restart local v18       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 1831
    .local v12, e:Landroid/os/RemoteException;
    const-string v2, "OppoMediaScanner"

    const-string v3, "RemoteException in scanMtpFile"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1836
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v18           #values:Landroid/content/ContentValues;
    :cond_2
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/OppoMediaScanner;->mMtpObjectHandle:I

    .line 1837
    const/4 v15, 0x0

    .line 1839
    .local v15, fileList:Landroid/database/Cursor;
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/media/OppoMediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1841
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/OppoMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1843
    invoke-virtual/range {p0 .. p1}, Landroid/media/OppoMediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/OppoMediaScanner$FileEntry;

    move-result-object v13

    .line 1844
    .local v13, entry:Landroid/media/OppoMediaScanner$FileEntry;
    if-eqz v13, :cond_3

    .line 1845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/OppoMediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v4, Landroid/media/OppoMediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    .end local v5           #lastModifiedSeconds:J
    move-result-object v15

    .line 1847
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Landroid/media/OppoMediaScanner;->processPlayList(Landroid/media/OppoMediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1860
    .end local v13           #entry:Landroid/media/OppoMediaScanner$FileEntry;
    :cond_3
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/OppoMediaScanner;->mMtpObjectHandle:I

    .line 1861
    if-eqz v15, :cond_0

    .line 1862
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1851
    .restart local v5       #lastModifiedSeconds:J
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/media/OppoMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/OppoMediaScanner;->mClient:Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/media/OppoMediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v7

    const/16 v3, 0x3001

    move/from16 v0, p4

    if-ne v0, v3, :cond_5

    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x1

    invoke-static/range {p1 .. p1}, Landroid/media/OppoMediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v11

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1857
    .end local v5           #lastModifiedSeconds:J
    :catch_1
    move-exception v12

    .line 1858
    .restart local v12       #e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "OppoMediaScanner"

    const-string v3, "RemoteException in OppoMediaScanner.scanFile()"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1860
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/OppoMediaScanner;->mMtpObjectHandle:I

    .line 1861
    if-eqz v15, :cond_0

    .line 1862
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1854
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v5       #lastModifiedSeconds:J
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 1860
    .end local v5           #lastModifiedSeconds:J
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/OppoMediaScanner;->mMtpObjectHandle:I

    .line 1861
    if-eqz v15, :cond_6

    .line 1862
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "path"
    .parameter "volumeName"
    .parameter "mimeType"

    .prologue
    .line 1706
    :try_start_0
    invoke-direct {p0, p2}, Landroid/media/OppoMediaScanner;->initialize(Ljava/lang/String;)V

    .line 1707
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/OppoMediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1709
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1713
    .local v11, file:Ljava/io/File;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    .line 1714
    const/4 v0, 0x0

    .line 1726
    .end local v11           #file:Ljava/io/File;
    :goto_0
    return-object v0

    .line 1719
    .restart local v11       #file:Ljava/io/File;
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 1722
    .local v3, lastModifiedSeconds:J
    iget-object v0, p0, Landroid/media/OppoMediaScanner;->mClient:Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v11}, Ljava/io/File;->isDirectory()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v9}, Landroid/media/OppoMediaScanner$MyOppoMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1724
    .end local v3           #lastModifiedSeconds:J
    .end local v11           #file:Ljava/io/File;
    :catch_0
    move-exception v10

    .line 1725
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "OppoMediaScanner"

    const-string v1, "RemoteException in OppoMediaScanner.scanFile()"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1726
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 2422
    iput-object p1, p0, Landroid/media/OppoMediaScanner;->mLocale:Ljava/lang/String;

    .line 2423
    return-void
.end method

.method public setScanFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2299
    iput p1, p0, Landroid/media/OppoMediaScanner;->mScanFlag:I

    .line 2300
    return-void
.end method
