.class Lcom/android/server/am/OppoActivityStackHelper;
.super Ljava/lang/Object;
.source "OppoActivityStackHelper.java"


# static fields
.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.oppo.camera"

.field private static final TAG:Ljava/lang/String; = "OppoActivityStackHelper"


# instance fields
.field private mIsProcessesReady:Z

.field mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->NEW_FIELD:Landroid/annotation/OppoHook$OppoHookType;
        note = "mei.Liu@Plf.Framework add for narrow frame 2013/05/27"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->OPPO:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OppoActivityStackHelper;->mIsProcessesReady:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OppoActivityStackHelper;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    return-void
.end method


# virtual methods
.method final handleSendCameraMode(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "context"
    .parameter "prev"
    .parameter "next"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    if-nez p2, :cond_2

    .line 150
    const-string v0, "com.oppo.camera"

    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "OppoActivityStackHelper"

    const-string v1, "sendIsCameraModeIntent true1!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/OppoActivityStackHelper;->sendIsCameraModeIntent(Landroid/content/Context;Z)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/OppoActivityStackHelper;->sendIsCameraModeIntent(Landroid/content/Context;Z)V

    goto :goto_0

    .line 157
    :cond_2
    const-string v0, "com.oppo.camera"

    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.oppo.camera"

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    const-string v0, "OppoActivityStackHelper"

    const-string v1, "sendIsCameraModeIntent true2!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/OppoActivityStackHelper;->sendIsCameraModeIntent(Landroid/content/Context;Z)V

    goto :goto_0

    .line 161
    :cond_3
    const-string v0, "com.oppo.camera"

    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oppo.camera"

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/OppoActivityStackHelper;->sendIsCameraModeIntent(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method final handleSendHomeMode(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "context"
    .parameter "prev"
    .parameter "next"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/server/am/OppoActivityStackHelper;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Landroid/hardware/input/OppoNarrowFrame;

    invoke-direct {v1, p1}, Landroid/hardware/input/OppoNarrowFrame;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/OppoActivityStackHelper;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    .line 79
    :cond_0
    if-nez p2, :cond_3

    .line 80
    iget-boolean v1, p3, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/OppoActivityStackHelper;->sendIsHomeModeIntent(Landroid/content/Context;Z)V

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OppoActivityStackHelper;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/input/OppoNarrowFrame;->setNarrowFrameHome(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "OppoActivityStackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1-OppoActivityStackHelper OppoInputManager setNarrowFrameHome is wrong , because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/OppoActivityStackHelper;->sendIsHomeModeIntent(Landroid/content/Context;Z)V

    .line 97
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OppoActivityStackHelper;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/input/OppoNarrowFrame;->setNarrowFrameHome(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    .line 99
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "OppoActivityStackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2-OppoActivityStackHelper OppoInputManager setNarrowFrameHome is wrong , because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    iget-boolean v1, p3, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p2, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v1, :cond_4

    .line 105
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/OppoActivityStackHelper;->sendIsHomeModeIntent(Landroid/content/Context;Z)V

    .line 110
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/OppoActivityStackHelper;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/input/OppoNarrowFrame;->setNarrowFrameHome(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 111
    :catch_2
    move-exception v0

    .line 112
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "OppoActivityStackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3-OppoActivityStackHelper OppoInputManager setNarrowFrameHome is wrong , because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    iget-boolean v1, p3, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-nez v1, :cond_1

    iget-boolean v1, p2, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/OppoActivityStackHelper;->sendIsHomeModeIntent(Landroid/content/Context;Z)V

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OppoActivityStackHelper;->mOppoNarrowFrame:Landroid/hardware/input/OppoNarrowFrame;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/input/OppoNarrowFrame;->setNarrowFrameHome(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 122
    :catch_3
    move-exception v0

    .line 123
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "OppoActivityStackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4-OppoActivityStackHelper OppoInputManager setNarrowFrameHome is wrong , because of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method final informProcessesReady()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "OppoActivityStackHelper"

    const-string v1, "informProcessesReady begin:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OppoActivityStackHelper;->mIsProcessesReady:Z

    .line 174
    const-string v0, "OppoActivityStackHelper"

    const-string v1, "informProcessesReady end."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method

.method final sendIsCameraModeIntent(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isCameraMode"

    .prologue
    .line 134
    iget-boolean v1, p0, Lcom/android/server/am/OppoActivityStackHelper;->mIsProcessesReady:Z

    if-nez v1, :cond_0

    .line 135
    const-string v1, "OppoActivityStackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsCameraModeIntent:isCameraMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", can\'t send broadcast before boot completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CAMERA_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "iscameramode"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 141
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method final sendIsHomeModeIntent(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isHomeMode"

    .prologue
    .line 57
    iget-boolean v1, p0, Lcom/android/server/am/OppoActivityStackHelper;->mIsProcessesReady:Z

    if-nez v1, :cond_0

    .line 58
    const-string v1, "OppoActivityStackHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIsHomeModeIntent:isHomeMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", can\'t send broadcast before boot completed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HOME_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ishomemode"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
