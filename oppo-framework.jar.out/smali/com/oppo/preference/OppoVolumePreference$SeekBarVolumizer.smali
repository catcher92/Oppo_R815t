.class public Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "OppoVolumePreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/preference/OppoVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mVolumeBeforeMute:I

.field private mVolumeObserver:Landroid/database/ContentObserver;

.field final synthetic this$0:Lcom/oppo/preference/OppoVolumePreference;


# direct methods
.method public constructor <init>(Lcom/oppo/preference/OppoVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"

    .prologue
    .line 274
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;-><init>(Lcom/oppo/preference/OppoVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Lcom/oppo/preference/OppoVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "seekBar"
    .parameter "streamType"
    .parameter "defaultUri"

    .prologue
    const/4 v1, -0x1

    .line 277
    iput-object p1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->this$0:Lcom/oppo/preference/OppoVolumePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 255
    iput v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 257
    iput v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 259
    new-instance v0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;

    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer$1;-><init>(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    .line 278
    iput-object p2, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 279
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 280
    iput p4, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    .line 281
    iput-object p3, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 283
    invoke-direct {p0, p3, p5}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 245
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method private initSeekBar(Landroid/widget/SeekBar;Landroid/net/Uri;)V
    .locals 4
    .parameter "seekBar"
    .parameter "defaultUri"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 288
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 289
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 290
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 292
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 295
    if-nez p2, :cond_0

    .line 296
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 297
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 305
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 307
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 310
    :cond_1
    return-void

    .line 298
    :cond_2
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 299
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 301
    :cond_3
    sget-object p2, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .parameter "amount"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 372
    invoke-virtual {p0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->startSample()V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 377
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public muteVolume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 380
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    if-eq v0, v2, :cond_0

    .line 381
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 382
    invoke-virtual {p0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->startSample()V

    .line 383
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 384
    iput v2, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 391
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeBeforeMute:I

    .line 387
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 388
    invoke-virtual {p0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 389
    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 323
    if-nez p3, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0, p2}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/oppo/preference/OppoVolumePreference$VolumeStore;)V
    .locals 2
    .parameter "volumeStore"

    .prologue
    .line 401
    iget v0, p1, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->volume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 402
    iget v0, p1, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->originalVolume:I

    iput v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    .line 403
    iget v0, p1, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->volume:I

    iput v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 404
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->postSetVolume(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/oppo/preference/OppoVolumePreference$VolumeStore;)V
    .locals 1
    .parameter "volumeStore"

    .prologue
    .line 394
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 395
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->volume:I

    .line 396
    iget v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    iput v0, p1, Lcom/oppo/preference/OppoVolumePreference$VolumeStore;->originalVolume:I

    .line 398
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 337
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .parameter "seekBar"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->startSample()V

    .line 343
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 332
    iput p1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    .line 333
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mOriginalStreamVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 320
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 346
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mLastProgress:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 347
    return-void
.end method

.method public startSample()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->this$0:Lcom/oppo/preference/OppoVolumePreference;

    invoke-virtual {v0, p0}, Lcom/oppo/preference/OppoVolumePreference;->onSampleStarting(Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;)V

    .line 355
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 358
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 314
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mVolumeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 315
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 316
    return-void
.end method

.method public stopSample()V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/oppo/preference/OppoVolumePreference$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 364
    :cond_0
    return-void
.end method
