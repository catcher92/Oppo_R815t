.class public Lcom/oppo/widget/OppoCommaEditText;
.super Lcom/oppo/widget/OppoMultiAutoCompleteTextView;
.source "OppoCommaEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoCommaEditText$1;,
        Lcom/oppo/widget/OppoCommaEditText$OppoCommaTokenizer;,
        Lcom/oppo/widget/OppoCommaEditText$ItemChecker;,
        Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final ID_COMMA_BG:I = 0xc080420

.field static final TAG:Ljava/lang/String; = "OppoCommaEditText"

.field static final TEST_DEBUG:Z


# instance fields
.field private mBitmapHeight:I

.field private mComma_bg:Landroid/graphics/drawable/Drawable;

.field private mConfig:Landroid/graphics/Bitmap$Config;

.field private mContext:Landroid/content/Context;

.field private mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mItemChecker:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

.field private mLineHeight:I

.field private mMax:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnVaildeItemListener:Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mTextHeight:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoCommaEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object v2, p0, Lcom/oppo/widget/OppoCommaEditText;->mContext:Landroid/content/Context;

    .line 57
    iput-object v2, p0, Lcom/oppo/widget/OppoCommaEditText;->mComma_bg:Landroid/graphics/drawable/Drawable;

    .line 59
    iput-object v2, p0, Lcom/oppo/widget/OppoCommaEditText;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 60
    iput v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mMinWidth:I

    .line 61
    iput v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mMinHeight:I

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mPaddingRect:Landroid/graphics/Rect;

    .line 64
    iput-object v2, p0, Lcom/oppo/widget/OppoCommaEditText;->mTextPaint:Landroid/text/TextPaint;

    .line 65
    iput-object v2, p0, Lcom/oppo/widget/OppoCommaEditText;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 67
    const/16 v0, 0xb

    iput v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mMax:I

    .line 68
    iput v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mLineHeight:I

    .line 69
    iput v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mBitmapHeight:I

    .line 70
    iput v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mTextHeight:I

    .line 72
    iput-object v2, p0, Lcom/oppo/widget/OppoCommaEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 73
    iput-object v2, p0, Lcom/oppo/widget/OppoCommaEditText;->mOnVaildeItemListener:Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;

    .line 74
    iput-object v2, p0, Lcom/oppo/widget/OppoCommaEditText;->mItemChecker:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    .line 82
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoCommaEditText;->initOppoComma(Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoCommaEditText;)Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mOnVaildeItemListener:Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoCommaEditText;Ljava/lang/CharSequence;IILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoCommaEditText;->setImageSpan(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoCommaEditText;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoCommaEditText;->removeItem(II)V

    return-void
.end method

.method private getCommaDrawable(Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v8, p0, Lcom/oppo/widget/OppoCommaEditText;->mComma_bg:Landroid/graphics/drawable/Drawable;

    .line 184
    .local v8, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_1

    .line 186
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoCommaEditText;->getShowText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, showText:Ljava/lang/String;
    iget-object v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v9, v3

    .line 188
    .local v9, mLineLength:I
    iget-object v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v9

    iget-object v4, p0, Lcom/oppo/widget/OppoCommaEditText;->mPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int v11, v3, v4

    .line 189
    .local v11, nWidth:I
    const/4 v10, 0x0

    .line 190
    .local v10, nOffsetX:I
    iget v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mMinWidth:I

    if-ge v11, v3, :cond_0

    .line 191
    iget v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mMinWidth:I

    sub-int/2addr v3, v11

    div-int/lit8 v10, v3, 0x2

    .line 192
    iget v11, p0, Lcom/oppo/widget/OppoCommaEditText;->mMinWidth:I

    .line 198
    :cond_0
    iget v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mBitmapHeight:I

    iget-object v4, p0, Lcom/oppo/widget/OppoCommaEditText;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 201
    .local v7, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mBitmapHeight:I

    invoke-virtual {v8, v2, v2, v11, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 203
    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 206
    iget-object v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoCommaEditText;->mTextHeight:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 207
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v4, v10

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oppo/widget/OppoCommaEditText;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 210
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #showText:Ljava/lang/String;
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #mLineLength:I
    .end local v10           #nOffsetX:I
    .end local v11           #nWidth:I
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private getShowText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .parameter "text"

    .prologue
    .line 170
    const-string v0, ""

    .line 171
    .local v0, str:Ljava/lang/String;
    const-string v1, "..."

    .line 172
    .local v1, strOmi:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 173
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mMax:I

    if-le v2, v3, :cond_1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/oppo/widget/OppoCommaEditText;->mMax:I

    invoke-interface {p1, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 176
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initOppoComma(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 125
    iput-object p1, p0, Lcom/oppo/widget/OppoCommaEditText;->mContext:Landroid/content/Context;

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoAutoCompleteTextView;->setThreshold(I)V

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc080420

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mComma_bg:Landroid/graphics/drawable/Drawable;

    .line 134
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mComma_bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iput-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 138
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mComma_bg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 142
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mComma_bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mMinWidth:I

    .line 143
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mComma_bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mMinHeight:I

    .line 145
    iget v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mMinHeight:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 148
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mTextPaint:Landroid/text/TextPaint;

    .line 150
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 151
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mLineHeight:I

    .line 152
    iget v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mLineHeight:I

    iget-object v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mBitmapHeight:I

    .line 153
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mLineHeight:I

    iget-object v2, p0, Lcom/oppo/widget/OppoCommaEditText;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoCommaEditText;->mFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mTextHeight:I

    .line 156
    new-instance v0, Lcom/oppo/widget/OppoCommaEditText$OppoCommaTokenizer;

    invoke-direct {v0, p0, v4}, Lcom/oppo/widget/OppoCommaEditText$OppoCommaTokenizer;-><init>(Lcom/oppo/widget/OppoCommaEditText;Lcom/oppo/widget/OppoCommaEditText$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 157
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoMultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 159
    new-instance v0, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    invoke-direct {v0, p0, v4}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;-><init>(Lcom/oppo/widget/OppoCommaEditText;Lcom/oppo/widget/OppoCommaEditText$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mItemChecker:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    .line 160
    return-void

    .line 134
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private removeItem(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 215
    .local v0, editable:Landroid/text/Editable;
    const-string v1, ""

    invoke-interface {v0, p1, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 216
    return-void
.end method

.method private setImageSpan(Ljava/lang/CharSequence;IILjava/lang/CharSequence;)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "show"

    .prologue
    .line 163
    move-object v1, p1

    check-cast v1, Landroid/text/Editable;

    .line 164
    .local v1, edit:Landroid/text/Editable;
    invoke-direct {p0, p4}, Lcom/oppo/widget/OppoCommaEditText;->getCommaDrawable(Ljava/lang/CharSequence;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .local v0, d:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Lcom/oppo/widget/OppoCommaEditText;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 166
    .local v2, span:Landroid/text/style/ImageSpan;
    const/16 v3, 0x21

    invoke-interface {v1, v2, p2, p3, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 167
    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "lengthBefore"
    .parameter "lengthAfter"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mItemChecker:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    if-eqz v0, :cond_0

    if-lez p4, :cond_0

    .line 120
    iget-object v0, p0, Lcom/oppo/widget/OppoCommaEditText;->mItemChecker:Lcom/oppo/widget/OppoCommaEditText$ItemChecker;

    add-int v1, p2, p4

    invoke-virtual {v0, p2, v1}, Lcom/oppo/widget/OppoCommaEditText$ItemChecker;->updateItemCheckSpans(II)V

    .line 122
    :cond_0
    return-void
.end method

.method public setMaxLength(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 112
    iput p1, p0, Lcom/oppo/widget/OppoCommaEditText;->mMax:I

    .line 113
    return-void
.end method

.method public setOnVaildeItemListener(Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oppo/widget/OppoCommaEditText;->mOnVaildeItemListener:Lcom/oppo/widget/OppoCommaEditText$OnVaildeItemListener;

    .line 106
    return-void
.end method
