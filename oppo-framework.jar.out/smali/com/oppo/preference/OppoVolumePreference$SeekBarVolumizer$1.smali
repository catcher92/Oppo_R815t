.class Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;
.super Landroid/database/ContentObserver;
.source "OppoVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;


# direct methods
.method constructor <init>(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 263
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 264
    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->access$000(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->access$100(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->access$100(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->access$200(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->access$100(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->access$200(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 268
    .local v0, volume:I
    :goto_0
    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->access$000(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 270
    .end local v0           #volume:I
    :cond_0
    return-void

    .line 265
    :cond_1
    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->access$100(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;->this$1:Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;

    #getter for: Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->access$200(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto :goto_0
.end method
