.class Lcom/oppo/widget/OppoMultiChoiceAdapter$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OppoMultiChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoMultiChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoMultiChoiceAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/oppo/widget/OppoMultiChoiceAdapter$3;->this$0:Lcom/oppo/widget/OppoMultiChoiceAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 133
    instance-of v1, p1, Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 134
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 135
    .local v0, target:Landroid/view/View;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 137
    .end local v0           #target:Landroid/view/View;
    :cond_0
    return-void
.end method
