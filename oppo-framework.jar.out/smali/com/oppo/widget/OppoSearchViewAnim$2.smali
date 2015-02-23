.class Lcom/oppo/widget/OppoSearchViewAnim$2;
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
    .line 87
    iput-object p1, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 92
    const/16 v0, 0x3eb

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I
    invoke-static {v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$000(Lcom/oppo/widget/OppoSearchViewAnim;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mOnAnimationListener:Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$100(Lcom/oppo/widget/OppoSearchViewAnim;)Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/widget/OppoSearchViewAnim$OnAnimationListener;->onHideAnimationEnd()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$400(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$400(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mForeground:Landroid/view/View;
    invoke-static {v0}, Lcom/oppo/widget/OppoSearchViewAnim;->access$400(Lcom/oppo/widget/OppoSearchViewAnim;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    const/16 v1, 0x3e9

    #setter for: Lcom/oppo/widget/OppoSearchViewAnim;->mStateSearch:I
    invoke-static {v0, v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$002(Lcom/oppo/widget/OppoSearchViewAnim;I)I

    .line 101
    iget-object v0, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    iget-object v1, p0, Lcom/oppo/widget/OppoSearchViewAnim$2;->this$0:Lcom/oppo/widget/OppoSearchViewAnim;

    #getter for: Lcom/oppo/widget/OppoSearchViewAnim;->mShowActionBarRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/oppo/widget/OppoSearchViewAnim;->access$500(Lcom/oppo/widget/OppoSearchViewAnim;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 103
    :cond_2
    return-void
.end method
