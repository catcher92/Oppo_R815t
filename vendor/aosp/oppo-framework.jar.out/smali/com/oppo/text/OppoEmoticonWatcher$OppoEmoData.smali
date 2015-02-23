.class public Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;
.super Ljava/lang/Object;
.source "OppoEmoticonWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/text/OppoEmoticonWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OppoEmoData"
.end annotation


# instance fields
.field public mDrawableId:I

.field public mEnd:I

.field public mStart:I

.field public mStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/oppo/text/OppoEmoticonWatcher;


# direct methods
.method protected constructor <init>(Lcom/oppo/text/OppoEmoticonWatcher;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-object p1, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->this$0:Lcom/oppo/text/OppoEmoticonWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput v0, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mStart:I

    .line 194
    iput v0, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mEnd:I

    .line 195
    iput v0, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mDrawableId:I

    .line 196
    const-string v0, ""

    iput-object v0, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoData;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
