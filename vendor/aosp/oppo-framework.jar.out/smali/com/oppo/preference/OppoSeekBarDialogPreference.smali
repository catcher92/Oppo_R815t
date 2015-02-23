.class public Lcom/oppo/preference/OppoSeekBarDialogPreference;
.super Lcom/oppo/preference/OppoDialogPreference;
.source "OppoSeekBarDialogPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OppoSeekBarDialogPreference"


# instance fields
.field private mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/oppo/preference/OppoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const v0, 0xc09042a

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->setDialogLayoutResource(I)V

    .line 53
    invoke-virtual {p0}, Lcom/oppo/preference/OppoSeekBarDialogPreference;->createActionButtons()V

    .line 56
    invoke-virtual {p0}, Lcom/oppo/preference/OppoDialogPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "dialogView"

    .prologue
    .line 79
    const v0, 0xc020009

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method public createActionButtons()V
    .locals 1

    .prologue
    .line 62
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->setPositiveButtonText(I)V

    .line 63
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->setNegativeButtonText(I)V

    .line 64
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 70
    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, iconView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/oppo/preference/OppoSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/oppo/preference/OppoSeekBarDialogPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
