.class Lcom/android/internal/app/OppoActionBarImpl$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OppoActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/OppoActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/OppoActionBarImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$400(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContentView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$400(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 167
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$200(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$500(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContextDisplayMode:I
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$600(Lcom/android/internal/app/OppoActionBarImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$500(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mTopVisibilityView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$200(Lcom/android/internal/app/OppoActionBarImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$700(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$800(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #getter for: Lcom/android/internal/app/OppoActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;
    invoke-static {v0}, Lcom/android/internal/app/OppoActionBarImpl;->access$800(Lcom/android/internal/app/OppoActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/OppoActionBarImpl$4;->this$0:Lcom/android/internal/app/OppoActionBarImpl;

    #calls: Lcom/android/internal/app/OppoActionBarImpl;->resizeScreenLayout(Z)V
    invoke-static {v0, v2}, Lcom/android/internal/app/OppoActionBarImpl;->access$300(Lcom/android/internal/app/OppoActionBarImpl;Z)V

    .line 178
    return-void
.end method
