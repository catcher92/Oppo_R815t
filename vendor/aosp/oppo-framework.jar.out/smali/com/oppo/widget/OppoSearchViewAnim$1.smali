.class Lcom/oppo/widget/OppoSearchViewAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoSearchViewAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoSearchViewAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoSearchViewAnim;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoSearchViewAnim;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 77
    const/16 v0, 0x3eb

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I
    invoke-static {v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$000(Lcom/oppo/widget/OppoSearchViewAnim;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;->onShowAnimationEnd()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/4 v1, 0x0

    #setter for: Lcom/oppo/widget/OppoSearchViewAnim;->mCurrentShowAnim:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$202(Lcom/oppo/widget/OppoSearchViewAnim;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 82
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/4 v1, 0x1

    #calls: Lcom/oppo/widget/OppoSearchViewAnim;->setImeVisibility(Z)V
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$300(Lcom/oppo/widget/OppoSearchViewAnim;Z)V

    .line 83
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$1;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/16 v1, 0x3e8

    #setter for: Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$002(Lcom/oppo/widget/OppoSearchViewAnim;I)I

    .line 85
    :cond_1
    return-void
.end method
