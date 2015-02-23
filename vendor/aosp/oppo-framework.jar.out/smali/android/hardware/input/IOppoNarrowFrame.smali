.class public interface abstract Landroid/hardware/input/IOppoNarrowFrame;
.super Ljava/lang/Object;
.source "IOppoNarrowFrame.java"


# static fields
.field public static final OPPO_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final OPPO_FIRST_CALL_TRANSACTION:I = 0x2711

.field public static final SET_NARROWFRAME_FULLSCREEN_TRANSACTION:I = 0x2713

.field public static final SET_NARROWFRAME_HOME_TRANSACTION:I = 0x2714

.field public static final SET_NARROWFRAME_SIDE_TRANSACTION:I = 0x2712

.field public static final SET_NARROWFRAME_SWITCH_TRANSACTION:I = 0x2715


# virtual methods
.method public abstract setNarrowFrameFullScreen(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNarrowFrameHome(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNarrowFrameSide(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setNarrowFrameSwitch(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
