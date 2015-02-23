.class public Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;
.super Landroid/text/style/ReplacementSpan;
.source "OppoEmoticonWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/text/OppoEmoticonWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OppoEmoticonSpan"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoEmoticonSpan"


# instance fields
.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field final synthetic this$0:Lcom/oppo/text/OppoEmoticonWatcher;


# direct methods
.method public constructor <init>(Lcom/oppo/text/OppoEmoticonWatcher;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "d"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->this$0:Lcom/oppo/text/OppoEmoticonWatcher;

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 214
    iput-object p2, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 215
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 4
    .parameter "canvas"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "paint"

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    sub-int v1, p7, p6

    .line 224
    .local v1, y:I
    const/4 v0, 0x0

    .line 225
    .local v0, translateY:I
    iget-object v2, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v2, v2

    if-ne v1, v2, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 232
    :goto_0
    add-int v2, p6, v0

    int-to-float v2, v2

    invoke-virtual {p1, p5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 233
    iget-object v2, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 235
    return-void

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v2, v2

    if-ne v1, v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v3, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 230
    :cond_1
    const-string v2, "OppoEmoticonSpan"

    const-string v3, "drawText FontMetricsInt has been changed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 240
    iget-object v1, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 241
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v1, :cond_0

    .line 242
    iput-object p5, p0, Lcom/oppo/text/OppoEmoticonWatcher$OppoEmoticonSpan;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 244
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->right:I

    return v1
.end method
