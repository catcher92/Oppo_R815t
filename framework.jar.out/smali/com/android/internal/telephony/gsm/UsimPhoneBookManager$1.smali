.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4089
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4096
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 4168
    :cond_0
    :goto_0
    return-void

    .line 4100
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 4101
    .local v1, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 4103
    .local v3, index:I
    iget-object v5, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/AdnRecord;

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/AdnRecord;

    .line 4105
    .local v0, adn:Lcom/android/internal/telephony/AdnRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecord;->getRecordIndex()I

    move-result v5

    if-gtz v5, :cond_1

    .line 4106
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/AdnRecord;->setRecordIndex(I)V

    .line 4109
    :cond_1
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    .line 4110
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Ljava/util/ArrayList;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4113
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingResponse:Landroid/os/Message;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Landroid/os/Message;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 4114
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingResponse:Landroid/os/Message;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Landroid/os/Message;

    move-result-object v5

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v5, v8, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 4115
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingResponse:Landroid/os/Message;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$400(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 4116
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #setter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pendingResponse:Landroid/os/Message;
    invoke-static {v5, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$402(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Landroid/os/Message;)Landroid/os/Message;

    goto :goto_0

    .line 4129
    .end local v0           #adn:Lcom/android/internal/telephony/AdnRecord;
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #index:I
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 4131
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 4132
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object v4, v5

    check-cast v4, [I

    .line 4133
    .local v4, record:[I
    array-length v5, v4

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 4134
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget v6, p1, Landroid/os/Message;->arg2:I

    aget v7, v4, v7

    const/4 v8, 0x2

    aget v8, v4, v8

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->clearAllEFPbcControlInformation(III)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;III)V

    goto :goto_0

    .line 4141
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v4           #record:[I
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 4142
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 4143
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 4144
    .local v2, efdata:[B
    aget-byte v5, v2, v7

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, v2, v6

    or-int/2addr v5, v6

    .line 4145
    goto :goto_0

    .line 4150
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #efdata:[B
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 4151
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 4152
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    #getter for: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/IccFileHandler;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$600(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v5

    const/16 v6, 0x4f23

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 4158
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 4159
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 4160
    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 4161
    .restart local v2       #efdata:[B
    aget-byte v5, v2, v7

    if-ne v5, v6, :cond_0

    .line 4162
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$1;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->resetEFpbcControlInfor(II)V
    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$700(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;II)V

    goto/16 :goto_0

    .line 4096
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
