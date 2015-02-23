.class public Lcom/android/server/input/OppoInputManagerService;
.super Lcom/android/server/input/InputManagerService;
.source "OppoInputManagerService.java"

# interfaces
.implements Landroid/hardware/input/IOppoNarrowFrame;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IOppoNarrowFrame"

.field private static final TAG:Ljava/lang/String; = "OppoInputManagerService"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 39
    return-void
.end method

.method private static native nativeSetNarrowFrameFullScreen(Z)V
.end method

.method private static native nativeSetNarrowFrameHome(Z)V
.end method

.method private static native nativeSetNarrowFrameSide(II)V
.end method

.method private static native nativeSetNarrowFrameSwitch(Z)V
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/hardware/input/IInputManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 47
    :pswitch_0
    const-string v6, "OppoInputManagerService"

    const-string v7, "IOppoNarrowFrame.SET_NARROWFRAME_SIDE_TRANSACTION"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v6, "android.hardware.input.IOppoNarrowFrame"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 50
    .local v2, left:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 51
    .local v4, right:I
    invoke-virtual {p0, v2, v4}, Lcom/android/server/input/OppoInputManagerService;->setNarrowFrameSide(II)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 57
    .end local v2           #left:I
    .end local v4           #right:I
    :pswitch_1
    const-string v6, "OppoInputManagerService"

    const-string v7, "IOppoNarrowFrame.SET_NARROWFRAME_FULLSCREEN_TRANSACTION"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v6, "android.hardware.input.IOppoNarrowFrame"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 60
    .local v0, isFullScreen:Z
    invoke-virtual {p0, v0}, Lcom/android/server/input/OppoInputManagerService;->setNarrowFrameFullScreen(Z)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0           #isFullScreen:Z
    :pswitch_2
    const-string v6, "OppoInputManagerService"

    const-string v7, "IOppoNarrowFrame.SET_NARROWFRAME_HOME_TRANSACTION"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v6, "android.hardware.input.IOppoNarrowFrame"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 69
    .local v1, isHome:Z
    invoke-virtual {p0, v1}, Lcom/android/server/input/OppoInputManagerService;->setNarrowFrameHome(Z)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v1           #isHome:Z
    :pswitch_3
    const-string v6, "OppoInputManagerService"

    const-string v7, "IOppoNarrowFrame.SET_NARROWFRAME_SWITCH_TRANSACTION"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v6, "android.hardware.input.IOppoNarrowFrame"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 78
    .local v3, nfswitch:Z
    invoke-virtual {p0, v3}, Lcom/android/server/input/OppoInputManagerService;->setNarrowFrameSwitch(Z)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setNarrowFrameFullScreen(Z)V
    .locals 0
    .parameter "isFullScreen"

    .prologue
    .line 99
    invoke-static {p1}, Lcom/android/server/input/OppoInputManagerService;->nativeSetNarrowFrameFullScreen(Z)V

    .line 100
    return-void
.end method

.method public setNarrowFrameHome(Z)V
    .locals 0
    .parameter "isHome"

    .prologue
    .line 102
    invoke-static {p1}, Lcom/android/server/input/OppoInputManagerService;->nativeSetNarrowFrameHome(Z)V

    .line 103
    return-void
.end method

.method public setNarrowFrameSide(II)V
    .locals 0
    .parameter "left"
    .parameter "right"

    .prologue
    .line 95
    invoke-static {p1, p2}, Lcom/android/server/input/OppoInputManagerService;->nativeSetNarrowFrameSide(II)V

    .line 96
    return-void
.end method

.method public setNarrowFrameSwitch(Z)V
    .locals 0
    .parameter "nfswitch"

    .prologue
    .line 106
    invoke-static {p1}, Lcom/android/server/input/OppoInputManagerService;->nativeSetNarrowFrameSwitch(Z)V

    .line 107
    return-void
.end method
