.class Lcom/oppo/widget/OppoOptionMenuBar$2;
.super Ljava/lang/Object;
.source "OppoOptionMenuBar.java"

# interfaces
.implements Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoOptionMenuBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoOptionMenuBar;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGalleryItemClick(Lcom/oppo/widget/OppoMenuItem;I)V
    .locals 7
    .parameter "item"
    .parameter "position"

    .prologue
    .line 447
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J
    invoke-static {v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$000(Lcom/oppo/widget/OppoOptionMenuBar;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 449
    .local v0, duration:J
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J
    invoke-static {v3, v4, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->access$002(Lcom/oppo/widget/OppoOptionMenuBar;J)J

    .line 450
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$100(Lcom/oppo/widget/OppoOptionMenuBar;)J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 483
    .end local v0           #duration:J
    :cond_0
    :goto_0
    return-void

    .line 453
    .restart local v0       #duration:J
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$200(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$300(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$400(Lcom/oppo/widget/OppoOptionMenuBar;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    invoke-interface {p1}, Lcom/oppo/widget/OppoMenuItem;->getScrollDownType()I

    move-result v2

    .line 456
    .local v2, type:I
    const-string v3, "OppoOptionMenuBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scroll type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    packed-switch v2, :pswitch_data_0

    .line 475
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 481
    .end local v2           #type:I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #getter for: Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;->onOptionsItemSelected(Lcom/oppo/widget/OppoMenuItem;)Z

    goto :goto_0

    .line 459
    .restart local v2       #type:I
    :pswitch_0
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_1

    .line 463
    :pswitch_1
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    invoke-virtual {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_1

    .line 467
    :pswitch_2
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    #calls: Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V
    invoke-static {v3}, Lcom/oppo/widget/OppoOptionMenuBar;->access$600(Lcom/oppo/widget/OppoOptionMenuBar;)V

    goto :goto_1

    .line 471
    :pswitch_3
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar$2;->this$0:Lcom/oppo/widget/OppoOptionMenuBar;

    const/4 v4, 0x1

    #setter for: Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z
    invoke-static {v3, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->access$702(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z

    goto :goto_1

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
