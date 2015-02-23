.class Lcom/android/internal/telephony/gsm/GsmCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "GsmCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 2295
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2299
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2300
    const-string v1, "index"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2301
    .local v0, idx:I
    if-lez v0, :cond_0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 2303
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const-string/jumbo v2, "oppo block the incoming call!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2304
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollMsg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/gsm/GsmCallTracker;->OppohandleBlackListCall(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmCallTracker;Landroid/os/AsyncResult;)V

    .line 2314
    .end local v0           #idx:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollMsg:Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$602(Lcom/android/internal/telephony/gsm/GsmCallTracker;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2315
    return-void

    .line 2308
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const-string/jumbo v2, "oppo allow the incoming call!"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 2310
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollMsg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2311
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollMsg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmCallTracker;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleIncomingCallIndication(Landroid/os/AsyncResult;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->access$800(Lcom/android/internal/telephony/gsm/GsmCallTracker;Landroid/os/AsyncResult;)V

    goto :goto_0
.end method
