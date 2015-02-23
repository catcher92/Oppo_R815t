.class public abstract Lcom/oppo/preference/OppoDialogPreference;
.super Lcom/oppo/preference/OppoPreference;
.source "OppoDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/preference/OppoDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 96
    const v0, 0xc01040e

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/preference/OppoDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/preference/OppoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    sget-object v1, Landroid/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 79
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 80
    iget-object v1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 85
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 86
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 87
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 88
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/preference/OppoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 89
    const/4 v1, 0x5

    iget v2, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogLayoutResId:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 325
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 326
    .local v0, window:Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 327
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 353
    const v3, 0x102000b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, dialogMessageView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 356
    invoke-virtual {p0}, Lcom/oppo/preference/OppoDialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v1

    .line 357
    .local v1, message:Ljava/lang/CharSequence;
    const/16 v2, 0x8

    .line 359
    .local v2, newVisibility:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 360
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 361
    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    :cond_0
    const/4 v2, 0x0

    .line 367
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 368
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .end local v1           #message:Ljava/lang/CharSequence;
    .end local v2           #newVisibility:I
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 374
    iput p2, p0, Lcom/oppo/preference/OppoDialogPreference;->mWhichButtonClicked:I

    .line 375
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 337
    iget v2, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogLayoutResId:I

    if-nez v2, :cond_0

    .line 342
    :goto_0
    return-object v1

    .line 341
    :cond_0
    iget-object v2, p0, Lcom/oppo/preference/OppoDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 342
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 392
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oppo/preference/OppoPreferenceManager;->unregisterOnActivityDestroyListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;)V

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 382
    iget v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->onDialogClosed(Z)V

    .line 383
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 261
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 430
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oppo/preference/OppoDialogPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 432
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/preference/OppoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 441
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 436
    check-cast v0, Lcom/oppo/preference/OppoDialogPreference$SavedState;

    .line 437
    .local v0, myState:Lcom/oppo/preference/OppoDialogPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oppo/preference/OppoPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 438
    iget-boolean v1, v0, Lcom/oppo/preference/OppoDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, v0, Lcom/oppo/preference/OppoDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/oppo/preference/OppoDialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 417
    invoke-super {p0}, Lcom/oppo/preference/OppoPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 418
    .local v1, superState:Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 425
    :goto_0
    return-object v0

    .line 422
    :cond_1
    new-instance v0, Lcom/oppo/preference/OppoDialogPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oppo/preference/OppoDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 423
    .local v0, myState:Lcom/oppo/preference/OppoDialogPreference$SavedState;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/oppo/preference/OppoDialogPreference$SavedState;->isDialogShowing:Z

    .line 424
    iget-object v2, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/oppo/preference/OppoDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setDialogIcon(I)V
    .locals 1
    .parameter "dialogIconRes"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 172
    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dialogIcon"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    .line 163
    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0
    .parameter "dialogLayoutResId"

    .prologue
    .line 243
    iput p1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogLayoutResId:I

    .line 244
    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1
    .parameter "dialogMessageResId"

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 145
    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "dialogMessage"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    .line 137
    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1
    .parameter "dialogTitleResId"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "dialogTitle"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    .line 106
    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1
    .parameter "negativeButtonTextResId"

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "negativeButtonText"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/oppo/preference/OppoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 216
    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1
    .parameter "positiveButtonTextResId"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 198
    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "positiveButtonText"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/oppo/preference/OppoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 190
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 280
    .local v1, context:Landroid/content/Context;
    const/4 v3, -0x2

    iput v3, p0, Lcom/oppo/preference/OppoDialogPreference;->mWhichButtonClicked:I

    .line 282
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/preference/OppoDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/preference/OppoDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/preference/OppoDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 286
    invoke-virtual {p0}, Lcom/oppo/preference/OppoDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v0

    .line 287
    .local v0, contentView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 288
    invoke-virtual {p0, v0}, Lcom/oppo/preference/OppoDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 289
    iget-object v3, p0, Lcom/oppo/preference/OppoDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 294
    :goto_0
    iget-object v3, p0, Lcom/oppo/preference/OppoDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v3}, Lcom/oppo/preference/OppoDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 296
    invoke-virtual {p0}, Lcom/oppo/preference/OppoPreference;->getPreferenceManager()Lcom/oppo/preference/OppoPreferenceManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/oppo/preference/OppoPreferenceManager;->registerOnActivityDestroyListener(Lcom/oppo/preference/OppoPreferenceManager$OnActivityDestroyListener;)V

    .line 299
    iget-object v3, p0, Lcom/oppo/preference/OppoDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialog:Landroid/app/Dialog;

    .line 300
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/oppo/preference/OppoDialogPreference;->needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-direct {p0, v2}, Lcom/oppo/preference/OppoDialogPreference;->requestInputMethod(Landroid/app/Dialog;)V

    .line 303
    :cond_0
    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 306
    :cond_1
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 307
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 308
    return-void

    .line 291
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_2
    iget-object v3, p0, Lcom/oppo/preference/OppoDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/oppo/preference/OppoDialogPreference;->mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
