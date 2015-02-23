.class Landroid/media/OppoMediaScanner$PlaylistEntry;
.super Ljava/lang/Object;
.source "OppoMediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/OppoMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistEntry"
.end annotation


# instance fields
.field bestmatchid:J

.field bestmatchlevel:I

.field path:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/OppoMediaScanner$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/media/OppoMediaScanner$PlaylistEntry;-><init>()V

    return-void
.end method
