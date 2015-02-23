.class public Landroid/media/OppoMediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "OppoMediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/OppoMediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public final fileType:I

.field public final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "fileType"
    .parameter "mimeType"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Landroid/media/OppoMediaFile$MediaFileType;->fileType:I

    .line 143
    iput-object p2, p0, Landroid/media/OppoMediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 144
    return-void
.end method
