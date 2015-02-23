.class public Lcom/android/server/wm/OppoWindowManagerService;
.super Lcom/android/server/wm/WindowManagerService;
.source "OppoWindowManagerService.java"

# interfaces
.implements Landroid/view/IOppoWindowManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoWindowManagerService"


# instance fields
.field private mApkLockScreenSyncObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)V
    .locals 1
    .parameter "context"
    .parameter "pm"
    .parameter "displayManager"
    .parameter "inputManager"
    .parameter "uiHandler"
    .parameter "haveInputMethods"
    .parameter "showBootMsgs"
    .parameter "onlyCore"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p8}, Lcom/android/server/wm/WindowManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OppoWindowManagerService;->mApkLockScreenSyncObj:Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method public getApkUnlockWindow()Landroid/os/IBinder;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 155
    .local v5, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 156
    .local v1, N:I
    const/4 v4, 0x0

    .line 158
    .local v4, wTemp:Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 160
    :try_start_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-ne v6, v8, :cond_0

    .line 174
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 178
    :goto_1
    return-object v6

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "OppoWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: Invalid index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v6, v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 164
    goto :goto_1

    .line 158
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v7

    .line 178
    goto :goto_1
.end method

.method public isLockOnShow()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 191
    .local v5, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 192
    .local v1, N:I
    const/4 v4, 0x0

    .line 194
    .local v4, wTemp:Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 196
    :try_start_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-ne v6, v8, :cond_0

    .line 203
    const/4 v6, 0x1

    .line 206
    :goto_1
    return v6

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "OppoWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: Invalid index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v6, v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 200
    goto :goto_1

    .line 194
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    .line 206
    goto :goto_1
.end method

.method public isLockWndShow()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v5

    .line 128
    .local v5, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 129
    .local v1, N:I
    const/4 v4, 0x0

    .line 131
    .local v4, wTemp:Lcom/android/server/wm/WindowState;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 133
    :try_start_0
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/wm/WindowState;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x898

    if-ne v6, v8, :cond_0

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v6, :cond_0

    .line 142
    const-string v6, "OppoWindowManagerService"

    const-string v7, "return true"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v6, 0x1

    .line 146
    :goto_1
    return v6

    .line 134
    :catch_0
    move-exception v2

    .line 135
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "OppoWindowManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: Invalid index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v6, v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 137
    goto :goto_1

    .line 131
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v6, v7

    .line 146
    goto :goto_1
.end method

.method public keyguardSetApkLockScreenShowing(Z)V
    .locals 3
    .parameter "showing"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/server/wm/OppoWindowManagerService;->mApkLockScreenSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->keyguardSetApkLockScreenShowing(Z)V

    .line 120
    :goto_0
    monitor-exit v1

    .line 121
    return-void

    .line 118
    :cond_0
    const-string v0, "OppoWindowManagerService"

    const-string v2, "mPolicy == NULL!!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keyguardShowSecureApkLock(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->keyguardShowSecureApkLock(Z)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    const-string v0, "OppoWindowManagerService"

    const-string v1, "mPolicy == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 47
    :pswitch_0
    const-string v4, "android.view.IWindowManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isLockWndShow()Z

    move-result v1

    .line 49
    .local v1, result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 54
    .end local v1           #result:Z
    :pswitch_1
    const-string v4, "android.view.IWindowManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 57
    .local v0, arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OppoWindowManagerService;->keyguardSetApkLockScreenShowing(Z)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #arg0:Z
    :cond_1
    move v0, v2

    .line 56
    goto :goto_1

    .line 62
    :pswitch_2
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->getApkUnlockWindow()Landroid/os/IBinder;

    move-result-object v1

    .line 64
    .local v1, result:Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    .line 69
    .end local v1           #result:Landroid/os/IBinder;
    :pswitch_3
    const-string v4, "android.view.IWindowManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 72
    .restart local v0       #arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OppoWindowManagerService;->keyguardShowSecureApkLock(Z)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #arg0:Z
    :cond_2
    move v0, v2

    .line 71
    goto :goto_2

    .line 77
    :pswitch_4
    const-string v4, "android.view.IWindowManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->isLockOnShow()Z

    move-result v1

    .line 79
    .local v1, result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 84
    .end local v1           #result:Z
    :pswitch_5
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/server/wm/OppoWindowManagerService;->showStatusBar()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 90
    :pswitch_6
    const-string v2, "android.view.IWindowManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .local v0, arg0:I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/OppoWindowManagerService;->rm_add_StatusBarRunnable(I)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public rm_add_StatusBarRunnable(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->rm_add_StatusBarRunnable(I)V

    .line 108
    return-void
.end method

.method public showStatusBar()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy;->showStatusBar()V

    .line 104
    return-void
.end method
