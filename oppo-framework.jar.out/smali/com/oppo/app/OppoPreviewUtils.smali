.class public Lcom/oppo/app/OppoPreviewUtils;
.super Ljava/lang/Object;
.source "OppoPreviewUtils.java"


# static fields
.field private static final PREVIEW_ENABLE:Z = true

.field private static final TAG:Ljava/lang/String; = "OppoPreviewUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPreviewRes(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "view"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Loppo/R$styleable;->Window:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 49
    .local v1, typedArray:Landroid/content/res/TypedArray;
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 52
    .local v0, previewResource:I
    const-string v2, "OppoPreviewUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview : package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 58
    :cond_0
    return-void
.end method
