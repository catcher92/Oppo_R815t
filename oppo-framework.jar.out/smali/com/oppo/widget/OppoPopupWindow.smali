.class public Lcom/oppo/widget/OppoPopupWindow;
.super Ljava/lang/Object;
.source "OppoPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoPopupWindow$PopupViewContainer;,
        Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I = null

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHasClipped:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoPopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/oppo/widget/OppoPopupWindow;-><init>(Landroid/view/View;II)V

    .line 259
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/oppo/widget/OppoPopupWindow;-><init>(Landroid/view/View;II)V

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 170
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/widget/OppoPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"
    .parameter "defStyleRes"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v7, 0x0

    iput v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mInputMethodMode:I

    .line 89
    const/4 v7, 0x1

    iput v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mSoftInputMode:I

    .line 90
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mTouchable:Z

    .line 91
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mOutsideTouchable:Z

    .line 92
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mClippingEnabled:Z

    .line 93
    const/4 v7, -0x1

    iput v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mSplitTouchEnabled:I

    .line 96
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mAllowScrollingAnchorParent:Z

    .line 97
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mLayoutInsetDecor:Z

    .line 99
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mHasClipped:Z

    .line 113
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    .line 114
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mScreenLocation:[I

    .line 115
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 122
    const/16 v7, 0x3e8

    iput v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowLayoutType:I

    .line 125
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mIgnoreCheekPress:Z

    .line 127
    const/4 v7, -0x1

    iput v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnimationStyle:I

    .line 132
    new-instance v7, Lcom/oppo/widget/OppoPopupWindow$1;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoPopupWindow$1;-><init>(Lcom/oppo/widget/OppoPopupWindow;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 196
    iput-object p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    .line 197
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 199
    sget-object v7, Landroid/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 204
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 206
    .local v2, animStyle:I
    const v7, 0xc030403

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2           #animStyle:I
    :cond_0
    iput v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnimationStyle:I

    .line 217
    iget-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 218
    iget-object v3, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 221
    .local v3, background:Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Lcom/oppo/widget/OppoPopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 225
    .local v1, aboveAnchorStateIndex:I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 226
    .local v5, count:I
    const/4 v4, -0x1

    .line 227
    .local v4, belowAnchorStateIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 228
    if-eq v6, v1, :cond_3

    .line 229
    move v4, v6

    .line 236
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 237
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 245
    .end local v1           #aboveAnchorStateIndex:I
    .end local v3           #background:Landroid/graphics/drawable/StateListDrawable;
    .end local v4           #belowAnchorStateIndex:I
    .end local v5           #count:I
    .end local v6           #i:I
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 246
    return-void

    .line 227
    .restart local v1       #aboveAnchorStateIndex:I
    .restart local v3       #background:Landroid/graphics/drawable/StateListDrawable;
    .restart local v4       #belowAnchorStateIndex:I
    .restart local v5       #count:I
    .restart local v6       #i:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 240
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "contentView"

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-direct {p0, p1, v0, v0}, Lcom/oppo/widget/OppoPopupWindow;-><init>(Landroid/view/View;II)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .parameter "contentView"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oppo/widget/OppoPopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mInputMethodMode:I

    .line 89
    iput v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mSoftInputMode:I

    .line 90
    iput-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mTouchable:Z

    .line 91
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mOutsideTouchable:Z

    .line 92
    iput-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mClippingEnabled:Z

    .line 93
    iput v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mSplitTouchEnabled:I

    .line 96
    iput-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAllowScrollingAnchorParent:Z

    .line 97
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLayoutInsetDecor:Z

    .line 99
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mHasClipped:Z

    .line 113
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    .line 114
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mScreenLocation:[I

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 122
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowLayoutType:I

    .line 125
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mIgnoreCheekPress:Z

    .line 127
    iput v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnimationStyle:I

    .line 132
    new-instance v0, Lcom/oppo/widget/OppoPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoPopupWindow$1;-><init>(Lcom/oppo/widget/OppoPopupWindow;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 328
    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    .line 330
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoPopupWindow;->setContentView(Landroid/view/View;)V

    .line 333
    invoke-virtual {p0, p2}, Lcom/oppo/widget/OppoPopupWindow;->setWidth(I)V

    .line 334
    invoke-virtual {p0, p3}, Lcom/oppo/widget/OppoPopupWindow;->setHeight(I)V

    .line 335
    invoke-virtual {p0, p4}, Lcom/oppo/widget/OppoPopupWindow;->setFocusable(Z)V

    .line 336
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoPopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoPopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoPopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoPopupWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoPopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$700()[I
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/oppo/widget/OppoPopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoPopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoPopupWindow;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1158
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1159
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1160
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0xc030402

    .line 1165
    :goto_0
    return v0

    .line 1160
    :cond_0
    const v0, 0xc030401

    goto :goto_0

    .line 1163
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1165
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .parameter "curFlags"

    .prologue
    const/high16 v2, 0x2

    .line 1116
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1122
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1123
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1125
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1126
    or-int/lit8 p1, p1, 0x8

    .line 1127
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1128
    or-int/2addr p1, v2

    .line 1133
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1134
    or-int/lit8 p1, p1, 0x10

    .line 1136
    :cond_2
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1137
    const/high16 v0, 0x4

    or-int/2addr p1, v0

    .line 1139
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1140
    or-int/lit16 p1, p1, 0x200

    .line 1142
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1143
    const/high16 v0, 0x80

    or-int/2addr p1, v0

    .line 1145
    :cond_5
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1146
    or-int/lit16 p1, p1, 0x100

    .line 1148
    :cond_6
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1149
    const/high16 v0, 0x1

    or-int/2addr p1, v0

    .line 1151
    :cond_7
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1152
    or-int/lit8 p1, p1, 0x20

    .line 1154
    :cond_8
    return p1

    .line 1130
    :cond_9
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1131
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .parameter "token"

    .prologue
    .line 1093
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1098
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1099
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidth:I

    iput v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1100
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeight:I

    iput v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1101
    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1102
    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1106
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoPopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1107
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1108
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1109
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OppoPopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1112
    return-object v0

    .line 1104
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    .locals 15
    .parameter "anchor"
    .parameter "p"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1187
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1188
    .local v1, anchorHeight:I
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1189
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int v12, v12, p3

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1190
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v12, v1

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1192
    const/4 v4, 0x0

    .line 1194
    .local v4, onTop:Z
    const/16 v12, 0x33

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1196
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1197
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1198
    .local v2, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1200
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v12, v1

    add-int v9, v12, p4

    .line 1202
    .local v9, screenY:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 1203
    .local v8, root:Landroid/view/View;
    iget v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupHeight:I

    add-int/2addr v12, v9

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v12, v13, :cond_0

    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupWidth:I

    add-int/2addr v12, v13

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int/2addr v12, v13

    if-lez v12, :cond_2

    .line 1207
    :cond_0
    iget-boolean v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v12, :cond_1

    .line 1208
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v10

    .line 1209
    .local v10, scrollX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v11

    .line 1210
    .local v11, scrollY:I
    new-instance v6, Landroid/graphics/Rect;

    iget v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupWidth:I

    add-int/2addr v12, v10

    add-int v12, v12, p3

    iget v13, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupHeight:I

    add-int/2addr v13, v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int v13, v13, p4

    invoke-direct {v6, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1212
    .local v6, r:Landroid/graphics/Rect;
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1217
    .end local v6           #r:Landroid/graphics/Rect;
    .end local v10           #scrollX:I
    .end local v11           #scrollY:I
    :cond_1
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1218
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int v12, v12, p3

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1219
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1222
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1224
    iget v12, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v13, p0, Lcom/oppo/widget/OppoPopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int/2addr v12, v13

    sub-int v12, v12, p4

    iget-object v13, p0, Lcom/oppo/widget/OppoPopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int v13, v13, p4

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    if-ge v12, v13, :cond_7

    const/4 v4, 0x1

    .line 1226
    :goto_0
    if-eqz v4, :cond_8

    .line 1227
    const/16 v12, 0x53

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1228
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v12

    iget-object v13, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-int/2addr v12, v13

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1234
    :cond_2
    :goto_1
    iget-boolean v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mClipToScreen:Z

    if-eqz v12, :cond_6

    .line 1235
    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v12, v13

    .line 1237
    .local v3, displayFrameWidth:I
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int v7, v12, v13

    .line 1238
    .local v7, right:I
    if-le v7, v3, :cond_3

    .line 1239
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v13, v7, v3

    sub-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1241
    :cond_3
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v13, v2, Landroid/graphics/Rect;->left:I

    if-ge v12, v13, :cond_5

    .line 1242
    iget v12, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1243
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-le v12, v3, :cond_4

    .line 1244
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mHasClipped:Z

    .line 1245
    :cond_4
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1248
    :cond_5
    if-eqz v4, :cond_9

    .line 1249
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mScreenLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int v12, v12, p4

    iget v13, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupHeight:I

    sub-int v5, v12, v13

    .line 1250
    .local v5, popupTop:I
    if-gez v5, :cond_6

    .line 1251
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v12, v5

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1258
    .end local v3           #displayFrameWidth:I
    .end local v5           #popupTop:I
    .end local v7           #right:I
    :cond_6
    :goto_2
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v13, 0x1000

    or-int/2addr v12, v13

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1260
    return v4

    .line 1224
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1230
    :cond_8
    iget-object v12, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    add-int v12, v12, p4

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1254
    .restart local v3       #displayFrameWidth:I
    .restart local v7       #right:I
    :cond_9
    move-object/from16 v0, p2

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v0, p2

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1078
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 1034
    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 1035
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1039
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1040
    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1041
    .local v1, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1042
    .local v0, height:I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1043
    const/4 v0, -0x2

    .line 1048
    :cond_2
    new-instance v3, Lcom/oppo/widget/OppoPopupWindow$PopupViewContainer;

    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/oppo/widget/OppoPopupWindow$PopupViewContainer;-><init>(Lcom/oppo/widget/OppoPopupWindow;Landroid/content/Context;)V

    .line 1049
    .local v3, popupViewContainer:Lcom/oppo/widget/OppoPopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1051
    .local v2, listParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1052
    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iput-object v3, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    .line 1058
    .end local v0           #height:I
    .end local v1           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #listParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #popupViewContainer:Lcom/oppo/widget/OppoPopupWindow$PopupViewContainer;
    :goto_0
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupWidth:I

    .line 1059
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupHeight:I

    .line 1060
    return-void

    .line 1056
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0
.end method

.method private registerForScrollChanged(Landroid/view/View;II)V
    .locals 2
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    .line 1618
    invoke-direct {p0}, Lcom/oppo/widget/OppoPopupWindow;->unregisterForScrollChanged()V

    .line 1620
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1621
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1622
    .local v0, vto:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1623
    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1626
    :cond_0
    iput p2, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorXoff:I

    .line 1627
    iput p3, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorYoff:I

    .line 1628
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1605
    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1606
    .local v1, anchorRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1607
    .local v0, anchor:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1608
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #anchor:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1610
    .restart local v0       #anchor:Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1611
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1612
    .local v2, vto:Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Lcom/oppo/widget/OppoPopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1614
    .end local v2           #vto:Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1615
    return-void
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .locals 12
    .parameter "anchor"
    .parameter "updateLocation"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "updateDimension"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1591
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    iget-object v8, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1554
    .local v8, oldAnchor:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_8

    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorXoff:I

    if-ne v1, p3, :cond_2

    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v1, v0, :cond_8

    :cond_2
    const/4 v7, 0x1

    .line 1555
    .local v7, needsUpdate:Z
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    if-eqz v7, :cond_9

    iget-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mIsDropdown:Z

    if-nez v1, :cond_9

    .line 1556
    :cond_3
    move/from16 v0, p4

    invoke-direct {p0, p1, p3, v0}, Lcom/oppo/widget/OppoPopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 1563
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 1564
    .local v9, p:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mHasClipped:Z

    if-eqz v1, :cond_5

    .line 1565
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupWidth:I

    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1568
    :cond_5
    if-eqz p5, :cond_6

    .line 1569
    const/4 v1, -0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_a

    .line 1570
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1574
    :goto_3
    const/4 v1, -0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_b

    .line 1575
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1581
    :cond_6
    :goto_4
    iget v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1582
    .local v10, x:I
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1584
    .local v11, y:I
    if-eqz p2, :cond_c

    .line 1585
    move/from16 v0, p4

    invoke-direct {p0, p1, v9, p3, v0}, Lcom/oppo/widget/OppoPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoPopupWindow;->updateAboveAnchor(Z)V

    .line 1590
    :goto_5
    iget v2, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v10, v1, :cond_7

    iget v1, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v11, v1, :cond_d

    :cond_7
    const/4 v6, 0x1

    :goto_6
    move-object v1, p0

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/widget/OppoPopupWindow;->update(IIIIZ)V

    goto :goto_0

    .line 1554
    .end local v7           #needsUpdate:Z
    .end local v9           #p:Landroid/view/WindowManager$LayoutParams;
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    .line 1557
    .restart local v7       #needsUpdate:Z
    :cond_9
    if-eqz v7, :cond_4

    .line 1559
    iput p3, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorXoff:I

    .line 1560
    move/from16 v0, p4

    iput v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorYoff:I

    goto :goto_2

    .line 1572
    .restart local v9       #p:Landroid/view/WindowManager$LayoutParams;
    :cond_a
    move/from16 v0, p6

    iput v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 1577
    :cond_b
    move/from16 v0, p7

    iput v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1587
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_c
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorXoff:I

    iget v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnchorYoff:I

    invoke-direct {p0, p1, v9, v1, v2}, Lcom/oppo/widget/OppoPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoPopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1590
    :cond_d
    const/4 v6, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .parameter "aboveAnchor"

    .prologue
    .line 989
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 990
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchor:Z

    .line 992
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 997
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1003
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1337
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1338
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mIsShowing:Z

    .line 1339
    iput-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mHasClipped:Z

    .line 1341
    invoke-direct {p0}, Lcom/oppo/widget/OppoPopupWindow;->unregisterForScrollChanged()V

    .line 1344
    :try_start_0
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1349
    :cond_0
    iput-object v3, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    .line 1351
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mOnDismissListener:Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mOnDismissListener:Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;->onDismiss()V

    .line 1356
    :cond_1
    return-void

    .line 1346
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1347
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1349
    :cond_2
    iput-object v3, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    .line 1351
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mOnDismissListener:Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1352
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mOnDismissListener:Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;

    invoke-interface {v0}, Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .parameter "anchor"

    .prologue
    .line 1272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoPopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .parameter "anchor"
    .parameter "yOffset"

    .prologue
    .line 1285
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/widget/OppoPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .parameter "anchor"
    .parameter "yOffset"
    .parameter "ignoreBottomDecorations"

    .prologue
    const/4 v9, 0x1

    .line 1303
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1304
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1306
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mDrawingLocation:[I

    .line 1307
    .local v0, anchorPos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1309
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1310
    .local v1, bottomEdge:I
    if-eqz p3, :cond_0

    .line 1311
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1312
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1314
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1315
    .local v3, distanceToBottom:I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1318
    .local v4, distanceToTop:I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1319
    .local v6, returnedHeight:I
    iget-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 1320
    iget-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/oppo/widget/OppoPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1321
    iget-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/oppo/widget/OppoPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1324
    :cond_1
    return v6
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 677
    iget v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 678
    iget-object v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 680
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 678
    goto :goto_0

    .line 680
    :cond_2
    iget v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 664
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mAllowScrollingAnchorParent:Z

    .line 665
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .parameter "animationStyle"

    .prologue
    .line 403
    iput p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mAnimationStyle:I

    .line 404
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "background"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 358
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mClipToScreen:Z

    .line 654
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoPopupWindow;->setClippingEnabled(Z)V

    .line 655
    return-void

    .line 654
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 643
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mClippingEnabled:Z

    .line 644
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "contentView"

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iput-object p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    .line 441
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 442
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    .line 445
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .parameter "focusable"

    .prologue
    .line 489
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mFocusable:Z

    .line 490
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 828
    iput p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeight:I

    .line 829
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mIgnoreCheekPress:Z

    .line 384
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 516
    iput p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mInputMethodMode:I

    .line 517
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLayoutInScreen:Z

    .line 725
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 741
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLayoutInsetDecor:Z

    .line 742
    return-void
.end method

.method public setOnDismissListener(Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;)V
    .locals 0
    .parameter "onDismissListener"

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mOnDismissListener:Lcom/oppo/widget/OppoPopupWindow$OnDismissListener;

    .line 1365
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mOutsideTouchable:Z

    .line 610
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 529
    iput p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mSoftInputMode:I

    .line 530
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 697
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mSplitTouchEnabled:I

    .line 698
    return-void

    .line 697
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 455
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .parameter "touchModal"

    .prologue
    .line 770
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mNotTouchModal:Z

    .line 771
    return-void

    .line 770
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .parameter "touchable"

    .prologue
    .line 574
    iput-boolean p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mTouchable:Z

    .line 575
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 860
    iput p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidth:I

    .line 861
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 795
    iput p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidthMode:I

    .line 796
    iput p2, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeightMode:I

    .line 797
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 752
    iput p1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowLayoutType:I

    .line 753
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .parameter "anchor"

    .prologue
    const/4 v0, 0x0

    .line 943
    invoke-virtual {p0, p1, v0, v0}, Lcom/oppo/widget/OppoPopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 944
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 3
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/4 v2, 0x1

    .line 964
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoPopupWindow;->registerForScrollChanged(Landroid/view/View;II)V

    .line 970
    iput-boolean v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mIsShowing:Z

    .line 971
    iput-boolean v2, p0, Lcom/oppo/widget/OppoPopupWindow;->mIsDropdown:Z

    .line 973
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoPopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 974
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoPopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 976
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oppo/widget/OppoPopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoPopupWindow;->updateAboveAnchor(Z)V

    .line 978
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeightMode:I

    if-gez v1, :cond_2

    .line 979
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeightMode:I

    iput v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 980
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidthMode:I

    if-gez v1, :cond_3

    .line 981
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidthMode:I

    iput v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 983
    :cond_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoPopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 985
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoPopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .parameter "token"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoPopupWindow;->unregisterForScrollChanged()V

    .line 910
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mIsShowing:Z

    .line 911
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mIsDropdown:Z

    .line 913
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoPopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 914
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Lcom/oppo/widget/OppoPopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 916
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoPopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 917
    if-nez p2, :cond_2

    .line 918
    const/16 p2, 0x33

    .line 920
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 921
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 922
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 923
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    .line 924
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeightMode:I

    iput v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 925
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    .line 926
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidthMode:I

    iput v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 927
    :cond_4
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoPopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .parameter "parent"
    .parameter "gravity"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 889
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/oppo/widget/OppoPopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 890
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1380
    .local v2, p:Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1382
    .local v3, update:Z
    invoke-direct {p0}, Lcom/oppo/widget/OppoPopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1383
    .local v0, newAnim:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1384
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1385
    const/4 v3, 0x1

    .line 1388
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoPopupWindow;->computeFlags(I)I

    move-result v1

    .line 1389
    .local v1, newFlags:I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1390
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1391
    const/4 v3, 0x1

    .line 1394
    :cond_3
    if-eqz v3, :cond_0

    .line 1395
    iget-object v4, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1410
    .local v6, p:Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoPopupWindow;->update(IIIIZ)V

    .line 1411
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1426
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/widget/OppoPopupWindow;->update(IIIIZ)V

    .line 1427
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "force"

    .prologue
    const/4 v7, -0x1

    .line 1444
    if-eq p3, v7, :cond_0

    .line 1445
    iput p3, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastWidth:I

    .line 1446
    invoke-virtual {p0, p3}, Lcom/oppo/widget/OppoPopupWindow;->setWidth(I)V

    .line 1449
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1450
    iput p4, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastHeight:I

    .line 1451
    invoke-virtual {p0, p4}, Lcom/oppo/widget/OppoPopupWindow;->setHeight(I)V

    .line 1454
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoPopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oppo/widget/OppoPopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1508
    :cond_2
    :goto_0
    return-void

    .line 1458
    :cond_3
    iget-object v6, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1460
    .local v4, p:Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1464
    .local v5, update:Z
    iget v6, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    .line 1465
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mWidthMode:I

    .line 1472
    .local v1, finalWidth:I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1473
    iput v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1474
    const/4 v5, 0x1

    .line 1477
    :cond_4
    iget v6, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeightMode:I

    if-gez v6, :cond_c

    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mHeightMode:I

    .line 1478
    .local v0, finalHeight:I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1479
    iput v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1480
    const/4 v5, 0x1

    .line 1483
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1484
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1485
    const/4 v5, 0x1

    .line 1488
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1489
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1490
    const/4 v5, 0x1

    .line 1493
    :cond_7
    invoke-direct {p0}, Lcom/oppo/widget/OppoPopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1494
    .local v2, newAnim:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1495
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1496
    const/4 v5, 0x1

    .line 1499
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoPopupWindow;->computeFlags(I)I

    move-result v3

    .line 1500
    .local v3, newFlags:I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1501
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1502
    const/4 v5, 0x1

    .line 1505
    :cond_9
    if-eqz v5, :cond_2

    .line 1506
    iget-object v6, p0, Lcom/oppo/widget/OppoPopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/oppo/widget/OppoPopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1466
    .end local v0           #finalHeight:I
    .end local v1           #finalWidth:I
    .end local v2           #newAnim:I
    .end local v3           #newFlags:I
    :cond_a
    iget-boolean v6, p0, Lcom/oppo/widget/OppoPopupWindow;->mHasClipped:Z

    if-eqz v6, :cond_b

    .line 1467
    iget v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .restart local v1       #finalWidth:I
    goto :goto_1

    .line 1469
    .end local v1           #finalWidth:I
    :cond_b
    iget v1, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastWidth:I

    .restart local v1       #finalWidth:I
    goto :goto_1

    .line 1477
    :cond_c
    iget v0, p0, Lcom/oppo/widget/OppoPopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 8
    .parameter "anchor"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 1521
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/oppo/widget/OppoPopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1522
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 8
    .parameter "anchor"
    .parameter "xoff"
    .parameter "yoff"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1543
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/oppo/widget/OppoPopupWindow;->update(Landroid/view/View;ZIIZII)V

    .line 1544
    return-void
.end method
