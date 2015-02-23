.class public interface abstract Landroid/view/IOppoWindowManager;
.super Ljava/lang/Object;
.source "IOppoWindowManager.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field public static final GET_APK_UNLOCK_WINDOW:I = 0x2714

.field public static final IS_LOCK_ON_SHOW:I = 0x2716

.field public static final IS_LOCK_WNDSHOW:I = 0x2712

.field public static final KEYGUARD_SET_APK_LOCKSCREEN_SHOWING:I = 0x2713

.field public static final KEYGUARD_SHOE_SECURE_APKLOCK:I = 0x2715

.field public static final OPPO_CALL_TRANSACTION_INDEX:I = 0x2710

.field public static final OPPO_FIRST_CALL_TRANSACTION:I = 0x2711

.field public static final RM_ADD_STATUSBAR_RUNNABLE:I = 0x2718

.field public static final SHOW_STATUSBAR:I = 0x2717


# virtual methods
.method public abstract getApkUnlockWindow()Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLockOnShow()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isLockWndShow()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract keyguardSetApkLockScreenShowing(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract keyguardShowSecureApkLock(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract rm_add_StatusBarRunnable(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showStatusBar()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
