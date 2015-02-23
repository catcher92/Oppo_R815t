.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$2;
.super Landroid/os/Handler;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 990
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 996
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 994
    .local v0, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 995
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 967
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 987
    :goto_0
    return-void

    .line 971
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 972
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    iget-object v4, v3, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 973
    :try_start_0
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 975
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 976
    .local v2, fieldInfo:[I
    array-length v3, v2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 977
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v5, 0x0

    aget v5, v2, v5

    #setter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simNumberLeng:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$202(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    .line 978
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$2;->this$0:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v5, 0x1

    aget v5, v2, v5

    #setter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->simNameLeng:I
    invoke-static {v3, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->access$302(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    .line 982
    .end local v2           #fieldInfo:[I
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$2;->notifyPending(Landroid/os/AsyncResult;)V

    .line 983
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
