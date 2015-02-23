.class public Landroid/widget/OppoSeekBar;
.super Landroid/widget/SeekBar;
.source "OppoSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;
    }
.end annotation


# instance fields
.field private mOppoSeekBarFromUserChangeListener:Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;

.field private mSafeMediaVolumeIndex:I

.field private safeMediaVolumeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/OppoSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OppoSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoSeekBar;->safeMediaVolumeEnabled:Z

    .line 44
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0419

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/widget/OppoSeekBar;->mSafeMediaVolumeIndex:I

    .line 46
    return-void
.end method


# virtual methods
.method public setOppoSeekBarFromUserChangeListener(Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 81
    iput-object p1, p0, Landroid/widget/OppoSeekBar;->mOppoSeekBarFromUserChangeListener:Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;

    .line 82
    return-void
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 51
    monitor-enter p0

    const/4 v0, 0x0

    .line 52
    .local v0, on:Z
    :try_start_0
    iget-boolean v1, p0, Landroid/widget/OppoSeekBar;->safeMediaVolumeEnabled:Z

    if-eqz v1, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 54
    iget v1, p0, Landroid/widget/OppoSeekBar;->mSafeMediaVolumeIndex:I

    if-ge p1, v1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 58
    :cond_0
    if-eqz v0, :cond_2

    .line 59
    iget v1, p0, Landroid/widget/OppoSeekBar;->mSafeMediaVolumeIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_1

    .line 60
    iget-object v1, p0, Landroid/widget/OppoSeekBar;->mOppoSeekBarFromUserChangeListener:Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Landroid/widget/OppoSeekBar;->mOppoSeekBarFromUserChangeListener:Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;

    invoke-interface {v1, p0, p1, p2}, Landroid/widget/OppoSeekBar$OnOppoSeekBarFromUserChangeListener;->onOppoSeekBarProgressrFromUserChanged(Landroid/widget/SeekBar;IZ)V

    .line 64
    :cond_1
    iget v1, p0, Landroid/widget/OppoSeekBar;->mSafeMediaVolumeIndex:I

    invoke-super {p0, v1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->setProgress(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSafeMediaVolumeEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0c0408

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/OppoSeekBar;->safeMediaVolumeEnabled:Z

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OppoSeekBar;->safeMediaVolumeEnabled:Z

    goto :goto_0
.end method
