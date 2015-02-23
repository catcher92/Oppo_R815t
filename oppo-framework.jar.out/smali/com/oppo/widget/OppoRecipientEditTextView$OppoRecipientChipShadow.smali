.class final Lcom/oppo/widget/OppoRecipientEditTextView$OppoRecipientChipShadow;
.super Landroid/view/View$DragShadowBuilder;
.source "OppoRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OppoRecipientChipShadow"
.end annotation


# instance fields
.field private final mChip:Lcom/oppo/widget/OppoRecipientChip;

.field final synthetic this$0:Lcom/oppo/widget/OppoRecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientChip;)V
    .locals 0
    .parameter
    .parameter "chip"

    .prologue
    .line 3046
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$OppoRecipientChipShadow;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 3047
    iput-object p2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$OppoRecipientChipShadow;->mChip:Lcom/oppo/widget/OppoRecipientChip;

    .line 3048
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 3059
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView$OppoRecipientChipShadow;->mChip:Lcom/oppo/widget/OppoRecipientChip;

    invoke-virtual {v0}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3060
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 3052
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$OppoRecipientChipShadow;->mChip:Lcom/oppo/widget/OppoRecipientChip;

    invoke-virtual {v1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3053
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3054
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 3055
    return-void
.end method
