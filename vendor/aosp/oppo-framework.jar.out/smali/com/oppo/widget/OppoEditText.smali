.class public Lcom/oppo/widget/OppoEditText;
.super Landroid/widget/EditText;
.source "OppoEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoEditText$1;,
        Lcom/oppo/widget/OppoEditText$OppoTextWatcher;,
        Lcom/oppo/widget/OppoEditText$OnPasswordDeletedListener;,
        Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;
    }
.end annotation


# static fields
.field private static final LOG_DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "OppoEditText"


# instance fields
.field private mArea:I

.field private mDeletable:Z

.field private mDeleteNormal:Landroid/graphics/drawable/Drawable;

.field private mDeletePressed:Landroid/graphics/drawable/Drawable;

.field private mDrawableSizeRight:I

.field private mOppoTextWatcher:Lcom/oppo/widget/OppoEditText$OppoTextWatcher;

.field private mPasswordDeleteListener:Lcom/oppo/widget/OppoEditText$OnPasswordDeletedListener;

.field private mQuickDelete:Z

.field mShouldHandleDelete:Z

.field private mTextDeleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-boolean v8, p0, Lcom/oppo/widget/OppoEditText;->mQuickDelete:Z

    .line 74
    iput-boolean v8, p0, Lcom/oppo/widget/OppoEditText;->mDeletable:Z

    .line 79
    iput-boolean v8, p0, Lcom/oppo/widget/OppoEditText;->mShouldHandleDelete:Z

    .line 89
    iput-object v5, p0, Lcom/oppo/widget/OppoEditText;->mTextDeleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;

    .line 91
    iput-object v5, p0, Lcom/oppo/widget/OppoEditText;->mPasswordDeleteListener:Lcom/oppo/widget/OppoEditText$OnPasswordDeletedListener;

    .line 97
    iput-object v5, p0, Lcom/oppo/widget/OppoEditText;->mOppoTextWatcher:Lcom/oppo/widget/OppoEditText$OppoTextWatcher;

    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, quickDelete:Z
    sget-object v5, Loppo/R$styleable;->OppoEditText:[I

    invoke-virtual {p1, p2, v5, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 113
    .local v1, a:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 115
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 116
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 117
    .local v2, attr:I
    packed-switch v2, :pswitch_data_0

    .line 115
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :pswitch_0
    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 120
    goto :goto_1

    .line 125
    .end local v2           #attr:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/oppo/widget/OppoEditText;->setFastDeletable(Z)V

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080408

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    .line 132
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 133
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoEditText;->mArea:I

    .line 134
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoEditText;->mArea:I

    iget v7, p0, Lcom/oppo/widget/OppoEditText;->mArea:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0xc080409

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    .line 139
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 140
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoEditText;->mArea:I

    iget v7, p0, Lcom/oppo/widget/OppoEditText;->mArea:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    :cond_3
    return-void

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoEditText;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/oppo/widget/OppoEditText;->mDeletable:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoEditText;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/oppo/widget/OppoEditText;->mDeletable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoEditText;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "currentText"

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private onFastDelete()V
    .locals 4

    .prologue
    .line 298
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .local v0, mText:Ljava/lang/CharSequence;
    move-object v1, v0

    .line 299
    check-cast v1, Landroid/text/Editable;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 300
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    return-void
.end method


# virtual methods
.method public isFastDeletable()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/oppo/widget/OppoEditText;->mQuickDelete:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/oppo/widget/OppoEditText;->mQuickDelete:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 335
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 336
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->mPasswordDeleteListener:Lcom/oppo/widget/OppoEditText$OnPasswordDeletedListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->mPasswordDeleteListener:Lcom/oppo/widget/OppoEditText$OnPasswordDeletedListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoEditText$OnPasswordDeletedListener;->onPasswordDeleted()Z

    .line 339
    :cond_0
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 223
    iget-boolean v6, p0, Lcom/oppo/widget/OppoEditText;->mQuickDelete:Z

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoEditText;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 225
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/oppo/widget/OppoEditText;->mDrawableSizeRight:I

    sub-int v3, v6, v7

    .line 226
    .local v3, deltX:I
    if-gez v3, :cond_0

    .line 289
    .end local v3           #deltX:I
    :goto_0
    return v4

    .line 230
    .restart local v3       #deltX:I
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v1, v6

    .line 231
    .local v1, cur_x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v2, v6

    .line 233
    .local v2, cur_y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 234
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 287
    .end local v0           #action:I
    .end local v1           #cur_x:I
    .end local v2           #cur_y:I
    .end local v3           #deltX:I
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 289
    .local v4, handled:Z
    goto :goto_0

    .line 236
    .end local v4           #handled:Z
    .restart local v0       #action:I
    .restart local v1       #cur_x:I
    .restart local v2       #cur_y:I
    .restart local v3       #deltX:I
    :pswitch_0
    if-le v1, v3, :cond_1

    iget-boolean v6, p0, Lcom/oppo/widget/OppoEditText;->mDeletable:Z

    if-eqz v6, :cond_1

    .line 238
    iput-boolean v5, p0, Lcom/oppo/widget/OppoEditText;->mShouldHandleDelete:Z

    .line 239
    iget-object v6, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    .line 240
    iget-object v6, p0, Lcom/oppo/widget/OppoEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8, v8, v6, v8}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    move v4, v5

    .line 242
    goto :goto_0

    .line 247
    :pswitch_1
    if-le v1, v3, :cond_1

    iget-boolean v6, p0, Lcom/oppo/widget/OppoEditText;->mDeletable:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/oppo/widget/OppoEditText;->mShouldHandleDelete:Z

    if-eqz v6, :cond_1

    .line 248
    iget-object v6, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 249
    iget-object v6, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8, v8, v6, v8}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_3
    iget-object v6, p0, Lcom/oppo/widget/OppoEditText;->mTextDeleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/oppo/widget/OppoEditText;->mTextDeleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;

    invoke-interface {v6}, Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;->onTextDeleted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 261
    :cond_4
    invoke-direct {p0}, Lcom/oppo/widget/OppoEditText;->onFastDelete()V

    .line 262
    iput-boolean v4, p0, Lcom/oppo/widget/OppoEditText;->mShouldHandleDelete:Z

    move v4, v5

    .line 263
    goto :goto_0

    .line 269
    :pswitch_2
    if-lt v1, v3, :cond_5

    if-ltz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    if-le v2, v5, :cond_1

    .line 270
    :cond_5
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 271
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8, v8, v5, v8}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 278
    :pswitch_3
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 279
    iget-object v5, p0, Lcom/oppo/widget/OppoEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8, v8, v5, v8}, Lcom/oppo/widget/OppoEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 323
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 325
    if-eqz p3, :cond_0

    .line 326
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoEditText;->mDrawableSizeRight:I

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oppo/widget/OppoEditText;->mDrawableSizeRight:I

    goto :goto_0
.end method

.method public setFastDeletable(Z)V
    .locals 2
    .parameter "quickDelete"

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/oppo/widget/OppoEditText;->mQuickDelete:Z

    if-eq v0, p1, :cond_0

    .line 151
    iput-boolean p1, p0, Lcom/oppo/widget/OppoEditText;->mQuickDelete:Z

    .line 152
    iget-boolean v0, p0, Lcom/oppo/widget/OppoEditText;->mQuickDelete:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->mOppoTextWatcher:Lcom/oppo/widget/OppoEditText$OppoTextWatcher;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/widget/OppoEditText$OppoTextWatcher;-><init>(Lcom/oppo/widget/OppoEditText;Lcom/oppo/widget/OppoEditText$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoEditText;->mOppoTextWatcher:Lcom/oppo/widget/OppoEditText$OppoTextWatcher;

    .line 156
    iget-object v0, p0, Lcom/oppo/widget/OppoEditText;->mOppoTextWatcher:Lcom/oppo/widget/OppoEditText$OppoTextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    :cond_0
    return-void
.end method

.method public setOnTextDeletedListener(Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;)V
    .locals 0
    .parameter "textDeleteListener"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/oppo/widget/OppoEditText;->mTextDeleteListener:Lcom/oppo/widget/OppoEditText$OnTextDeletedListener;

    .line 211
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter "text"
    .parameter "type"

    .prologue
    .line 346
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 347
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 348
    return-void
.end method

.method public setTextDeletedListener(Lcom/oppo/widget/OppoEditText$OnPasswordDeletedListener;)V
    .locals 0
    .parameter "passwordDeletedListener"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/oppo/widget/OppoEditText;->mPasswordDeleteListener:Lcom/oppo/widget/OppoEditText$OnPasswordDeletedListener;

    .line 218
    return-void
.end method
