.class final Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/DisplayPowerController;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    .line 1601
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1602
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1606
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1627
    :goto_0
    return-void

    .line 1608
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    #calls: Lcom/android/server/power/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$500(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 1612
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    #calls: Lcom/android/server/power/DisplayPowerController;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$600(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 1616
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    #calls: Lcom/android/server/power/DisplayPowerController;->debounceLightSensor()V
    invoke-static {v0}, Lcom/android/server/power/DisplayPowerController;->access$700(Lcom/android/server/power/DisplayPowerController;)V

    goto :goto_0

    .line 1622
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLastObservedLux:F
    invoke-static {v1}, Lcom/android/server/power/DisplayPowerController;->access$900(Lcom/android/server/power/DisplayPowerController;)F

    move-result v1

    #setter for: Lcom/android/server/power/DisplayPowerController;->mAmbientLux:F
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$802(Lcom/android/server/power/DisplayPowerController;F)F

    .line 1623
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/power/DisplayPowerController;

    const/4 v1, 0x1

    #calls: Lcom/android/server/power/DisplayPowerController;->updateAutoBrightness(Z)V
    invoke-static {v0, v1}, Lcom/android/server/power/DisplayPowerController;->access$1000(Lcom/android/server/power/DisplayPowerController;Z)V

    goto :goto_0

    .line 1606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
