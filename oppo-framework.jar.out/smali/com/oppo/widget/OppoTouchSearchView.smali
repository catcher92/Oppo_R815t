.class public Lcom/oppo/widget/OppoTouchSearchView;
.super Landroid/view/View;
.source "OppoTouchSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoTouchSearchView$UnionKey;,
        Lcom/oppo/widget/OppoTouchSearchView$Key;,
        Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    }
.end annotation


# static fields
.field private static final BG_ALIGN_LEFT:I = 0x1

.field private static final BG_ALIGN_MIDDLE:I = 0x0

.field private static final BG_ALIGN_RIGHT:I = 0x2

.field public static final CHAR_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field public static final KEY_PADDING_X:I = 0x1b

.field public static final MAX_SECTIONS_NUM:I = 0x1b

.field public static final MAX_SECTIONS_NUM_WITH_DOT:I = 0x17

.field public static final MIN_SECTIONS_NUM:I = 0x5

.field private static final SEARCH_OFFSET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoTouchSearchView"

.field private static final WELL_DRAWABLE_POSITION:I

.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field private KEYS:[Ljava/lang/String;

.field private TOUCH_SLOP:I

.field private UNIONKEYS:[Ljava/lang/String;

.field private curNum:I

.field private delayedClosed:Ljava/lang/Runnable;

.field private delayedTime:I

.field private flag:Z

.field private keyIndices:I

.field private lastKeyIndices:I

.field private layout:Landroid/widget/LinearLayout;

.field private longPressTime:I

.field private mActivePointerId:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlignMode:I

.field private mBackgroundLeftMargin:I

.field private mBackgroundRightMargin:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mDisplayKey:Ljava/lang/CharSequence;

.field private mDot:Ljava/lang/CharSequence;

.field private mDotDrawableHeight:I

.field private mDotDrawableWidth:I

.field private mDotDrawables:[Landroid/graphics/drawable/Drawable;

.field private mFirstLayout:Z

.field private mFrameChanged:Z

.field private mKeyDrawableHeight:I

.field private mKeyDrawableNames:[Ljava/lang/String;

.field private mKeyDrawableOffset:I

.field private mKeyDrawableWidth:I

.field private mKeyDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeyPaddingX:I

.field private mKeyPaddingY:I

.field private mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

.field private mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mPopupBg:Landroid/graphics/drawable/Drawable;

.field private mPopupDefaultHeight:I

.field private mPopupTextView:Landroid/widget/TextView;

.field private mPopupTextView_1:Landroid/widget/TextView;

.field private mPopupTextView_2:Landroid/widget/TextView;

.field private mPopupTextView_3:Landroid/widget/TextView;

.field private mPopupTextView_4:Landroid/widget/TextView;

.field private mPopupTextView_5:Landroid/widget/TextView;

.field private mPopupWinSubHeight:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowHeight:I

.field private mPopupWindowLocalx:I

.field private mPopupWindowLocaly:I

.field private mPopupWindowMinTop:I

.field private mPopupWindowRightMargin:I

.field private mPopupWindowTextColor:I

.field private mPopupWindowTextSize:I

.field private mPopupWindowTopMargin:I

.field private mPopupWindowWidth:I

.field private mSections:[Ljava/lang/String;

.field private mTextViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchFlag:Z

.field private mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

.field private mUnionEnable:Z

.field private mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

.field private mWhetherDrawDot:Z

.field private mWhetherUnion:Z

.field private surname:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 538
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    .line 543
    new-instance v0, Lcom/oppo/widget/OppoTouchSearchView$4;

    invoke-direct {v0}, Lcom/oppo/widget/OppoTouchSearchView$4;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoTouchSearchView;->CHAR_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoTouchSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 259
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 138
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 156
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 158
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 160
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 162
    iput-boolean v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 188
    const-string v6, ""

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 197
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 200
    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    .line 222
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->curNum:I

    .line 223
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 224
    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    .line 228
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLastMotionX:I

    .line 229
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLastMotionY:I

    .line 230
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->flag:Z

    .line 231
    const/16 v6, 0xa

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->TOUCH_SLOP:I

    .line 232
    const/16 v6, 0xbb8

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedTime:I

    .line 233
    const/16 v6, 0x12c

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->longPressTime:I

    .line 234
    iput v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 451
    new-instance v6, Lcom/oppo/widget/OppoTouchSearchView$3;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoTouchSearchView$3;-><init>(Lcom/oppo/widget/OppoTouchSearchView;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    .line 260
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 262
    .local v4, resources:Landroid/content/res/Resources;
    sget-object v6, Loppo/R$styleable;->OppoTouchSearchView:[I

    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 264
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 266
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 268
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    .line 270
    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 272
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 275
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 277
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v7, v6, :cond_0

    .line 278
    const v6, 0xc050403

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 281
    :cond_0
    const/4 v6, 0x6

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 283
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-ne v7, v6, :cond_1

    .line 284
    const v6, 0xc050404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 286
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    .line 289
    :cond_1
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 291
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ne v7, v6, :cond_2

    .line 292
    const v6, 0xc0d0404

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 295
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 297
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    if-ne v7, v6, :cond_3

    .line 301
    :cond_3
    const v6, 0xc060401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 303
    const/16 v6, 0x9

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 306
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    const v7, 0xc050406

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    .line 309
    const v6, 0xc050408

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTopMargin:I

    .line 311
    const v6, 0xc050407

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowRightMargin:I

    .line 313
    const v6, 0xc050433

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    .line 314
    const v6, 0xc050436

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 319
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowRightMargin:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    .line 320
    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTopMargin:I

    iput v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    .line 322
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    const v6, 0xc040407

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    .line 328
    const-string v6, "persist.sys.oppo.region"

    const-string v7, "CN"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, region:Ljava/lang/String;
    const-string v6, "CN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 330
    const v6, 0xc070400

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    .line 335
    :goto_0
    const v6, 0xc070401

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    .line 337
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_4

    .line 338
    const v6, 0xc080412

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 340
    :cond_4
    const v6, 0xc080413

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 344
    const-string v6, "CN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 345
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysDrawable(Landroid/content/res/Resources;)V

    .line 346
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysPressedDrawable(Landroid/content/res/Resources;)V

    .line 353
    :goto_1
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 355
    .local v1, inflate:Landroid/view/LayoutInflater;
    const v6, 0xc090409

    invoke-virtual {v1, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 358
    .local v2, mPopupContent:Landroid/view/ViewGroup;
    new-instance v6, Landroid/widget/PopupWindow;

    invoke-direct {v6, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 359
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 360
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 362
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 363
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    const v7, 0xc03000c

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 365
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 366
    const v6, 0xc020402

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    .line 371
    invoke-virtual {p0, v2, p1, v4}, Lcom/oppo/widget/OppoTouchSearchView;->InitTextViewList(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 375
    const/4 v4, 0x0

    .line 377
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    new-instance v7, Lcom/oppo/widget/OppoTouchSearchView$1;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoTouchSearchView$1;-><init>(Lcom/oppo/widget/OppoTouchSearchView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 410
    new-instance v6, Lcom/oppo/widget/OppoTouchSearchView$2;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoTouchSearchView$2;-><init>(Lcom/oppo/widget/OppoTouchSearchView;)V

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 420
    return-void

    .line 332
    .end local v1           #inflate:Landroid/view/LayoutInflater;
    .end local v2           #mPopupContent:Landroid/view/ViewGroup;
    :cond_5
    const v6, 0xc07040f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    goto/16 :goto_0

    .line 348
    :cond_6
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysDrawableExp(Landroid/content/res/Resources;)V

    .line 349
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeysPressedDrawableExp(Landroid/content/res/Resources;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoTouchSearchView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoTouchSearchView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    return v0
.end method

.method static synthetic access$1000()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoTouchSearchView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoTouchSearchView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoTouchSearchView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->curNum:I

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/widget/OppoTouchSearchView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->curNum:I

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoTouchSearchView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oppo/widget/OppoTouchSearchView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->surname:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoTouchSearchView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoTouchSearchView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoTouchSearchView;)Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoTouchSearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->setLayoutVisible()V

    return-void
.end method

.method private drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V
    .locals 4
    .parameter "canvas"
    .parameter "mkeys"

    .prologue
    .line 1142
    move-object v2, p2

    .line 1143
    .local v2, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    if-nez v2, :cond_0

    .line 1156
    :goto_0
    return-void

    .line 1147
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1148
    array-length v1, v2

    .line 1149
    .local v1, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1150
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 1151
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1149
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1155
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawKeysExp(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V
    .locals 4
    .parameter "canvas"
    .parameter "mkeys"

    .prologue
    .line 1769
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1773
    :cond_1
    move-object v2, p2

    .line 1774
    .local v2, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    if-eqz v2, :cond_0

    .line 1778
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1779
    array-length v1, v2

    .line 1780
    .local v1, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 1781
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 1782
    aget-object v3, v2, v0

    iget-object v3, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1786
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_3

    .line 1787
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1780
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1793
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "start"
    .parameter "end"
    .parameter "mkeys"

    .prologue
    .line 922
    if-le p3, p4, :cond_1

    .line 923
    const/4 v2, -0x1

    .line 936
    :cond_0
    :goto_0
    return v2

    .line 925
    :cond_1
    add-int v4, p3, p4

    div-int/lit8 v2, v4, 0x2

    .line 926
    .local v2, middle:I
    move-object v1, p5

    .line 927
    .local v1, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    aget-object v4, v1, v2

    iget v3, v4, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    .line 928
    .local v3, top:I
    aget-object v4, v1, v2

    iget v4, v4, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int v0, v4, v5

    .line 929
    .local v0, bottom:I
    if-lt p2, v3, :cond_2

    if-lt p2, v0, :cond_0

    .line 931
    :cond_2
    if-ge p2, v3, :cond_3

    .line 932
    add-int/lit8 p4, v2, -0x1

    .line 933
    invoke-direct/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v2

    goto :goto_0

    .line 935
    :cond_3
    add-int/lit8 p3, v2, 0x1

    .line 936
    invoke-direct/range {p0 .. p5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v2

    goto :goto_0
.end method

.method private findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "names"
    .parameter "name"

    .prologue
    .line 1430
    array-length v1, p1

    .line 1431
    .local v1, keyCount:I
    const/4 v2, 0x1

    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v2, v3, p2}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 1433
    .local v0, drawablePos:I
    if-gez v0, :cond_0

    .line 1434
    invoke-static {p1, p2}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1437
    :cond_0
    return v0
.end method

.method private findKeysDrawable(Landroid/content/res/Resources;)V
    .locals 13
    .parameter "resources"

    .prologue
    const v10, 0xc070402

    const/4 v12, 0x0

    .line 466
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 468
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    .line 469
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    array-length v2, v10

    .line 470
    .local v2, count:I
    new-array v10, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 472
    const/4 v4, 0x0

    .line 473
    .local v4, i:I
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    .line 474
    .local v3, extra:Ljava/lang/String;
    const v10, 0xc040408

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, strPrefix:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, OppoExtra:Ljava/lang/String;
    const-string v10, "drawable"

    invoke-virtual {p1, v0, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 477
    .local v8, res:I
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    aput-object v11, v10, v4

    .line 478
    add-int/lit8 v4, v4, 0x1

    .line 473
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 480
    .end local v0           #OppoExtra:Ljava/lang/String;
    .end local v3           #extra:Ljava/lang/String;
    .end local v8           #res:I
    .end local v9           #strPrefix:Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    iget v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 481
    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v10, v10, v12

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    iget v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 482
    return-void
.end method

.method private findKeysDrawableExp(Landroid/content/res/Resources;)V
    .locals 14
    .parameter "resources"

    .prologue
    const v11, 0xc070410

    const/4 v13, 0x0

    .line 1473
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v8

    .line 1476
    .local v8, packageName:Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1478
    .local v7, mKeyNames:[Ljava/lang/String;
    array-length v2, v7

    .line 1479
    .local v2, count:I
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1480
    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1482
    const/4 v4, 0x0

    .line 1483
    .local v4, i:I
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1484
    .local v10, strPrefix:Ljava/lang/String;
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, v1, v5

    .line 1486
    .local v3, extra:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1487
    .local v0, OppoExtra:Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1488
    .local v9, res:I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v4

    .line 1489
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    const v12, 0xc080414

    invoke-virtual {p1, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v4

    .line 1491
    add-int/lit8 v4, v4, 0x1

    .line 1484
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1493
    .end local v0           #OppoExtra:Ljava/lang/String;
    .end local v3           #extra:Ljava/lang/String;
    .end local v9           #res:I
    :cond_0
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    .line 1494
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iget v12, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableOffset:I

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    .line 1495
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    .line 1496
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v11, v11, v13

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    iput v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    .line 1497
    return-void
.end method

.method private findKeysPressedDrawable(Landroid/content/res/Resources;)V
    .locals 13
    .parameter "resources"

    .prologue
    const v11, 0xc070403

    .line 485
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 487
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, mKeyPressedNames:[Ljava/lang/String;
    array-length v6, v5

    .line 490
    .local v6, num:I
    new-array v11, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    .line 491
    const/4 v2, 0x0

    .line 492
    .local v2, i:I
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v10, v1, v3

    .line 493
    .local v10, tmp:Ljava/lang/String;
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 494
    .local v9, strPrefix:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, OppoExtra:Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 496
    .local v8, res:I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v2

    .line 497
    add-int/lit8 v2, v2, 0x1

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 499
    .end local v0           #OppoExtra:Ljava/lang/String;
    .end local v8           #res:I
    .end local v9           #strPrefix:Ljava/lang/String;
    .end local v10           #tmp:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private findKeysPressedDrawableExp(Landroid/content/res/Resources;)V
    .locals 13
    .parameter "resources"

    .prologue
    const v11, 0xc070410

    .line 1500
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    .line 1502
    .local v7, packageName:Ljava/lang/String;
    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1505
    .local v5, mKeyPressedNames:[Ljava/lang/String;
    array-length v6, v5

    .line 1506
    .local v6, num:I
    new-array v11, v6, [Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    .line 1507
    const/4 v2, 0x0

    .line 1508
    .local v2, i:I
    const v11, 0xc040408

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1509
    .local v9, strPrefix:Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v10, v1, v3

    .line 1511
    .local v10, tmp:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_pressed"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1512
    .local v0, OppoExtra:Ljava/lang/String;
    const-string v11, "drawable"

    invoke-virtual {p1, v0, v11, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1513
    .local v8, res:I
    iget-object v11, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v11, v2

    .line 1514
    add-int/lit8 v2, v2, 0x1

    .line 1509
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1516
    .end local v0           #OppoExtra:Ljava/lang/String;
    .end local v8           #res:I
    .end local v10           #tmp:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I
    .locals 6
    .parameter "charArray"
    .parameter "from"
    .parameter "to"
    .parameter "whichChar"

    .prologue
    const/4 v3, -0x1

    .line 569
    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 570
    :cond_0
    const-string v4, "OppoTouchSearchView"

    const-string v5, "getCharPositionInArray --- error,  return -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 620
    :cond_1
    :goto_0
    return v1

    .line 578
    :cond_2
    const-string v4, "#"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 582
    const-string v3, "persist.sys.oppo.region"

    const-string v4, "CN"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, region:Ljava/lang/String;
    const-string v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 584
    const/4 v1, 0x0

    goto :goto_0

    .line 586
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 591
    .end local v2           #region:Ljava/lang/String;
    :cond_4
    if-le p1, p2, :cond_5

    .line 592
    const-string v4, "OppoTouchSearchView"

    const-string v5, "getCharPositionInArray --- not find , return -1"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 593
    goto :goto_0

    .line 596
    :cond_5
    add-int v4, p1, p2

    div-int/lit8 v1, v4, 0x2

    .line 597
    .local v1, middle:I
    if-le v1, p2, :cond_6

    move v1, v3

    .line 598
    goto :goto_0

    .line 603
    :cond_6
    array-length v4, p0

    if-ne v4, v1, :cond_7

    move v1, v3

    .line 604
    goto :goto_0

    .line 611
    :cond_7
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p3, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, lowerCharSequence:Ljava/lang/CharSequence;
    sget-object v3, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v4, p0, v1

    invoke-virtual {v3, v0, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    sget-object v3, Lcom/oppo/widget/OppoTouchSearchView;->sCollator:Ljava/text/Collator;

    aget-object v4, p0, v1

    invoke-virtual {v3, v0, v4}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_8

    .line 616
    add-int/lit8 p1, v1, 0x1

    .line 617
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 619
    :cond_8
    add-int/lit8 p2, v1, -0x1

    .line 620
    invoke-static {p0, p1, p2, p3}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method static getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "charArray"
    .parameter "whichChar"

    .prologue
    const/4 v2, -0x1

    .line 551
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move v1, v2

    .line 565
    :cond_1
    :goto_0
    return v1

    .line 554
    :cond_2
    array-length v0, p0

    .line 555
    .local v0, charCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 560
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 565
    goto :goto_0
.end method

.method private getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "mkeys"

    .prologue
    const/4 v3, 0x0

    .line 942
    const/4 v8, -0x1

    .line 943
    .local v8, primaryIndex:I
    move-object v7, p3

    .line 944
    .local v7, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    array-length v6, v7

    .line 946
    .local v6, keyCount:I
    add-int/lit8 v4, v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oppo/widget/OppoTouchSearchView;->findCell(IIII[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v8

    .line 950
    const/4 v0, -0x1

    if-ne v0, v8, :cond_0

    .line 951
    aget-object v0, v7, v3

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-ge p2, v0, :cond_1

    .line 952
    const/4 v8, 0x0

    .line 957
    :cond_0
    :goto_0
    return v8

    .line 953
    :cond_1
    add-int/lit8 v0, v6, -0x1

    aget-object v0, v7, v0

    iget v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    if-le p2, v0, :cond_0

    .line 954
    add-int/lit8 v8, v6, -0x1

    goto :goto_0
.end method

.method private invalidateKey(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1031
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v4, :cond_1

    .line 1032
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v5}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v5

    aget-object v1, v4, v5

    .line 1033
    .local v1, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v4}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v4

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1038
    :goto_0
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1039
    .local v3, willDisplay:Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    .line 1040
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1041
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->x:I

    iget v6, v1, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    invoke-direct {p0, v4, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->onKeyChanged(Ljava/lang/CharSequence;II)V

    .line 1042
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1043
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz v4, :cond_0

    .line 1044
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 1046
    :cond_0
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v4, :cond_3

    .line 1047
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v4

    .line 1048
    .local v2, keysCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 1049
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1048
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1035
    .end local v0           #i:I
    .end local v1           #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    .end local v2           #keysCount:I
    .end local v3           #willDisplay:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-direct {p0, p1, p2, v5}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v5

    aget-object v1, v4, v5

    .restart local v1       #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    goto :goto_0

    .line 1051
    .restart local v0       #i:I
    .restart local v2       #keysCount:I
    .restart local v3       #willDisplay:Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1052
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1053
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1057
    .end local v0           #i:I
    .end local v2           #keysCount:I
    :cond_3
    return-void
.end method

.method private invalidateKeyExp(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1441
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, p2, v3}, Lcom/oppo/widget/OppoTouchSearchView;->getKeyIndices(II[Lcom/oppo/widget/OppoTouchSearchView$Key;)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 1446
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v0, v3, v4

    .line 1447
    .local v0, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1, p2, v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->getTextToDisplay(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1453
    .local v2, willDisplay:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1454
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->x:I

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->y:I

    invoke-direct {p0, v3, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView;->onKeyChangedExp(Ljava/lang/CharSequence;II)V

    .line 1455
    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1456
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz v3, :cond_2

    .line 1457
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onKey(Ljava/lang/CharSequence;)V

    .line 1460
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeysExp()V

    .line 1462
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1463
    .local v1, pos:I
    if-ltz v1, :cond_0

    .line 1465
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1466
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 1467
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method private isSectionsValidate()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1519
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadKeys()V
    .locals 6

    .prologue
    .line 521
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v2, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$Key;>;"
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v3, v4

    .line 524
    .local v3, keysCount:I
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 525
    const-string v4, "OppoTouchSearchView"

    const-string v5, "loadKeys --- error when loadKeys , keysCount > mKeyDrawables.length , return "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :goto_0
    return-void

    .line 530
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 531
    new-instance v1, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-direct {v1, v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 532
    .local v1, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 535
    .end local v1           #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    iput-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    goto :goto_0
.end method

.method private loadKeysExp()V
    .locals 8

    .prologue
    .line 1595
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$Key;>;"
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1618
    :goto_0
    return-void

    .line 1601
    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    array-length v5, v6

    .line 1602
    .local v5, keysCount:I
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v3, v6

    .line 1604
    .local v3, keyNamesCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 1606
    new-instance v2, Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-direct {v2, v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;-><init>(Ljava/lang/CharSequence;)V

    .line 1608
    .local v2, key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    iget-object v7, v2, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1609
    .local v0, drawablePos:I
    if-gez v0, :cond_1

    .line 1604
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1612
    :cond_1
    iget-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v0

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1614
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1617
    .end local v0           #drawablePos:I
    .end local v2           #key:Lcom/oppo/widget/OppoTouchSearchView$Key;
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/oppo/widget/OppoTouchSearchView$Key;

    iput-object v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    goto :goto_0
.end method

.method private loadUnionKeys()V
    .locals 12

    .prologue
    .line 625
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 626
    .local v7, resources:Landroid/content/res/Resources;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoTouchSearchView$UnionKey;>;"
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    array-length v0, v9

    .line 628
    .local v0, drawableNamesCount:I
    add-int/lit8 v9, v0, -0x1

    new-array v5, v9, [Ljava/lang/String;

    .line 629
    .local v5, mUnionKeyDrawableNames:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    add-int/lit8 v9, v0, -0x1

    if-ge v2, v9, :cond_0

    .line 630
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableNames:[Ljava/lang/String;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    aput-object v9, v5, v2

    .line 629
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    new-array v6, v9, [Landroid/graphics/drawable/Drawable;

    .line 633
    .local v6, mUnionKeyDrawables:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_1

    .line 634
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v10, v2, 0x1

    aget-object v9, v9, v10

    aput-object v9, v6, v2

    .line 633
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 637
    :cond_1
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    array-length v8, v9

    .line 641
    .local v8, unionkeysCount:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_4

    .line 642
    new-instance v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->UNIONKEYS:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-direct {v3, v9}, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;-><init>(Ljava/lang/CharSequence;)V

    .line 643
    .local v3, key:Lcom/oppo/widget/OppoTouchSearchView$UnionKey;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    iget-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    iget-object v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDot:Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 648
    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x1

    iget-object v11, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v9, v10, v11}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 650
    .local v1, drawablePos:I
    if-gez v1, :cond_2

    .line 651
    iget-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/oppo/widget/OppoTouchSearchView;->getCharPositionInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 653
    if-gez v1, :cond_2

    .line 641
    .end local v1           #drawablePos:I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 658
    .restart local v1       #drawablePos:I
    :cond_2
    aget-object v9, v6, v1

    invoke-virtual {v3, v9}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 660
    .end local v1           #drawablePos:I
    :cond_3
    const v9, 0xc080414

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 663
    :pswitch_1
    const-string v9, "B"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 664
    const-string v9, "C"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 667
    :pswitch_2
    const-string v9, "E"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 668
    const-string v9, "F"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 671
    :pswitch_3
    const-string v9, "H"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_3

    .line 674
    :pswitch_4
    const-string v9, "J"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 675
    const-string v9, "K"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 678
    :pswitch_5
    const-string v9, "M"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 679
    const-string v9, "N"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 682
    :pswitch_6
    const-string v9, "P"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 683
    const-string v9, "Q"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 686
    :pswitch_7
    const-string v9, "S"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    goto :goto_3

    .line 689
    :pswitch_8
    const-string v9, "U"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 690
    const-string v9, "V"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 693
    :pswitch_9
    const-string v9, "X"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyOne:Ljava/lang/CharSequence;

    .line 694
    const-string v9, "Y"

    iput-object v9, v3, Lcom/oppo/widget/OppoTouchSearchView$UnionKey;->keyTwo:Ljava/lang/CharSequence;

    goto :goto_3

    .line 700
    .end local v3           #key:Lcom/oppo/widget/OppoTouchSearchView$UnionKey;
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    iput-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    .line 701
    return-void

    .line 661
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private onKeyChanged(Ljava/lang/CharSequence;II)V
    .locals 8
    .parameter "display"
    .parameter "key_x"
    .parameter "key_y"

    .prologue
    const/4 v6, 0x0

    .line 1079
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1088
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1089
    .local v0, coordinate:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1091
    aget v3, v0, v6

    add-int/2addr v3, p2

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    sub-int v1, v3, v4

    .line 1092
    .local v1, localx:I
    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, p3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    shr-int/lit8 v4, v4, 0x1

    sub-int v2, v3, v4

    .line 1094
    .local v2, localy:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ge v2, v3, :cond_1

    .line 1095
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 1103
    :cond_1
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1104
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    goto :goto_0

    .line 1106
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1108
    const-string v3, "OppoTouchSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPopupWindowLocalx_update="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1111
    :cond_3
    const-string v3, "OppoTouchSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPopupWindowLocalx_show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0
.end method

.method private onKeyChangedExp(Ljava/lang/CharSequence;II)V
    .locals 8
    .parameter "display"
    .parameter "key_x"
    .parameter "key_y"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1721
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_0

    .line 1765
    :goto_0
    return-void

    .line 1728
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1731
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 1732
    .local v0, coordinate:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1743
    aget v3, v0, v7

    add-int/2addr v3, p2

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    sub-int v1, v3, v4

    .line 1745
    .local v1, localx:I
    const/4 v3, 0x1

    aget v3, v0, v3

    add-int/2addr v3, p3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    shr-int/lit8 v4, v4, 0x1

    sub-int v2, v3, v4

    .line 1747
    .local v2, localy:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-ge v2, v3, :cond_1

    .line 1748
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 1755
    :cond_1
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1756
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    goto :goto_0

    .line 1758
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1759
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, v4, v5, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1761
    :cond_3
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v7, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1060
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1061
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1066
    .local v1, pointerId:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1070
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1071
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 1076
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1070
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLayoutVisible()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;->onLongKey(Ljava/lang/CharSequence;)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    return-void
.end method

.method private update()V
    .locals 14

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->whetherUnion()V

    .line 735
    iget-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    if-nez v0, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeys()V

    .line 739
    :cond_0
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    .line 747
    .local v9, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    :goto_0
    iget v13, p0, Landroid/view/View;->mPaddingTop:I

    .line 748
    .local v13, topPadding:I
    array-length v10, v9

    .line 749
    .local v10, keysCount:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v0, v3

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v7, v0, v3

    .line 753
    .local v7, exactHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 754
    div-int v0, v7, v10

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 756
    rem-int v12, v7, v10

    .line 757
    .local v12, residual:I
    shr-int/lit8 v0, v12, 0x1

    add-int/2addr v13, v0

    .line 759
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    .line 764
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 765
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 766
    .local v11, r:Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->right:I

    iget v4, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 771
    .end local v11           #r:Landroid/graphics/Rect;
    :goto_1
    const/4 v1, 0x0

    .line 772
    .local v1, x:I
    move v2, v13

    .line 773
    .local v2, y:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v10, :cond_5

    .line 774
    aget-object v0, v9, v8

    iget-object v0, v0, Lcom/oppo/widget/OppoTouchSearchView$Key;->mKeyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 775
    aget-object v0, v9, v8

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    invoke-virtual/range {v0 .. v6}, Lcom/oppo/widget/OppoTouchSearchView$Key;->updateKeyValue(IIIIII)V

    .line 777
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v2, v0

    .line 773
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 741
    .end local v1           #x:I
    .end local v2           #y:I
    .end local v7           #exactHeight:I
    .end local v8           #i:I
    .end local v9           #keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    .end local v10           #keysCount:I
    .end local v12           #residual:I
    .end local v13           #topPadding:I
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    if-nez v0, :cond_3

    .line 742
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadUnionKeys()V

    .line 744
    :cond_3
    iget-object v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    .restart local v9       #keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    goto :goto_0

    .line 768
    .restart local v7       #exactHeight:I
    .restart local v10       #keysCount:I
    .restart local v12       #residual:I
    .restart local v13       #topPadding:I
    :cond_4
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    goto :goto_1

    .line 780
    .restart local v1       #x:I
    .restart local v2       #y:I
    .restart local v8       #i:I
    :cond_5
    return-void
.end method

.method private updateBackGroundBound()V
    .locals 7

    .prologue
    .line 903
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 904
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 907
    .local v0, bgwidth:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    if-nez v3, :cond_1

    .line 908
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v1, v3, 0x2

    .line 909
    .local v1, exactleft:I
    add-int v2, v1, v0

    .line 917
    .local v2, exactright:I
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 919
    .end local v0           #bgwidth:I
    .end local v1           #exactleft:I
    .end local v2           #exactright:I
    :cond_0
    return-void

    .line 910
    .restart local v0       #bgwidth:I
    :cond_1
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundAlignMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 911
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundRightMargin:I

    sub-int v2, v3, v4

    .line 912
    .restart local v2       #exactright:I
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int v1, v2, v3

    .restart local v1       #exactleft:I
    goto :goto_0

    .line 914
    .end local v1           #exactleft:I
    .end local v2           #exactright:I
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackgroundLeftMargin:I

    .line 915
    .restart local v1       #exactleft:I
    add-int v2, v1, v0

    .restart local v2       #exactright:I
    goto :goto_0
.end method

.method private updateExp(Z)V
    .locals 17
    .parameter "load"

    .prologue
    .line 1623
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1718
    :cond_0
    return-void

    .line 1627
    :cond_1
    if-eqz p1, :cond_2

    .line 1628
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeysExp()V

    .line 1630
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    .line 1632
    .local v12, keys:[Lcom/oppo/widget/OppoTouchSearchView$Key;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    .line 1633
    .local v16, topPadding:I
    array-length v13, v12

    .line 1635
    .local v13, keysCount:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    add-int v10, v1, v4

    .line 1641
    .local v10, exactHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 1643
    move v15, v10

    .line 1644
    .local v15, residual:I
    if-eqz v13, :cond_3

    .line 1645
    div-int v1, v10, v13

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 1646
    rem-int v15, v10, v13

    .line 1651
    :cond_3
    shr-int/lit8 v1, v15, 0x1

    add-int v16, v16, v1

    .line 1659
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-eqz v1, :cond_5

    .line 1660
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    .line 1661
    const-string v1, "OppoTouchSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKeyPaddingY = (mCellHeight - mKeyDrawableHeight) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    sub-int/2addr v1, v4

    div-int/lit8 v8, v1, 0x2

    .line 1672
    .local v8, dotTokeyPaddingX:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 1674
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 1680
    .local v14, r:Landroid/graphics/Rect;
    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->right:I

    iget v5, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 1683
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    if-gez v1, :cond_4

    .line 1684
    const/16 v1, 0x1b

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    .line 1705
    .end local v14           #r:Landroid/graphics/Rect;
    :cond_4
    :goto_1
    const/4 v2, 0x0

    .line 1706
    .local v2, x:I
    move/from16 v3, v16

    .line 1707
    .local v3, y:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v13, :cond_0

    .line 1709
    aget-object v1, v12, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/widget/OppoTouchSearchView$Key;->updateKeyValue(IIIIII)V

    .line 1712
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    add-int/2addr v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    add-int v9, v1, v4

    .line 1713
    .local v9, dotY:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    add-int/2addr v4, v2

    add-int/2addr v4, v8

    move-object/from16 v0, p0

    iget v5, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    add-int/2addr v5, v2

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableWidth:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    add-int/2addr v6, v9

    invoke-virtual {v1, v4, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1716
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    add-int/2addr v3, v1

    .line 1707
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1663
    .end local v2           #x:I
    .end local v3           #y:I
    .end local v8           #dotTokeyPaddingX:I
    .end local v9           #dotY:I
    .end local v11           #i:I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mDotDrawableHeight:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingY:I

    goto/16 :goto_0

    .line 1696
    .restart local v8       #dotTokeyPaddingX:I
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableWidth:I

    sub-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPaddingX:I

    goto :goto_1
.end method

.method private whetherUnion()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 704
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-nez v1, :cond_0

    .line 705
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    .line 729
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v1, v2

    .line 714
    .local v0, exactHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellWidth:I

    .line 715
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v1

    div-int v1, v0, v1

    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    .line 721
    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mCellHeight:I

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawableHeight:I

    if-ge v1, v2, :cond_1

    .line 722
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0

    .line 724
    :cond_1
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    goto :goto_0
.end method


# virtual methods
.method InitTextViewList(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 5
    .parameter "mPopupContent"
    .parameter "context"
    .parameter "resources"

    .prologue
    .line 423
    const v2, 0xc020403

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->layout:Landroid/widget/LinearLayout;

    .line 424
    const v2, 0xc020404

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_1:Landroid/widget/TextView;

    .line 426
    const v2, 0xc020405

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_2:Landroid/widget/TextView;

    .line 428
    const v2, 0xc020406

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_3:Landroid/widget/TextView;

    .line 430
    const v2, 0xc020407

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_4:Landroid/widget/TextView;

    .line 432
    const v2, 0xc020408

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_5:Landroid/widget/TextView;

    .line 435
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 436
    .local v1, mDensity:F
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 437
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    .line 438
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_1:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_3:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_4:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView_5:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    const v4, 0xc0d0403

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    return-void
.end method

.method public closing()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1162
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1163
    iget-boolean v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v2, :cond_2

    .line 1168
    const-string v2, "persist.sys.oppo.region"

    const-string v3, "CN"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, region:Ljava/lang/String;
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v1, v2

    .line 1170
    .local v1, size:I
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1171
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    array-length v1, v2

    .line 1173
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyIndices:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEYS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeys:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    const-string v2, "Tml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mKeyDrawables:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_0
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-le v2, v5, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ge v2, v1, :cond_1

    .line 1181
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1185
    const-string v2, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1186
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1191
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1193
    :cond_1
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->curNum:I

    if-eq v2, v5, :cond_2

    .line 1194
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->curNum:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1197
    .end local v0           #region:Ljava/lang/String;
    .end local v1           #size:I
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 1198
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1200
    :cond_3
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1202
    :cond_4
    return-void

    .line 1188
    .restart local v0       #region:Ljava/lang/String;
    .restart local v1       #size:I
    :cond_5
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getTouchSearchActionListener()Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 509
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 510
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 513
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 514
    invoke-virtual {p0}, Lcom/oppo/widget/OppoTouchSearchView;->closing()V

    .line 515
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 1120
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1121
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1125
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v1, :cond_2

    .line 1129
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, region:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1131
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    .line 1139
    .end local v0           #region:Ljava/lang/String;
    :goto_0
    return-void

    .line 1133
    .restart local v0       #region:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeysExp(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    goto :goto_0

    .line 1137
    .end local v0           #region:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionKeys:[Lcom/oppo/widget/OppoTouchSearchView$UnionKey;

    invoke-direct {p0, p1, v1}, Lcom/oppo/widget/OppoTouchSearchView;->drawKeys(Landroid/graphics/Canvas;[Lcom/oppo/widget/OppoTouchSearchView$Key;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 876
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 877
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v1, :cond_2

    .line 881
    :cond_0
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, region:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 883
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 884
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 893
    :goto_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    if-eqz v1, :cond_1

    .line 894
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFirstLayout:Z

    .line 896
    :cond_1
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    if-eqz v1, :cond_2

    .line 897
    iput-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 900
    .end local v0           #region:Ljava/lang/String;
    :cond_2
    return-void

    .line 886
    .restart local v0       #region:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 887
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 889
    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "me"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 962
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v1, v7

    .line 963
    .local v1, m:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v2, v7

    .line 965
    .local v2, n:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 967
    .local v0, action:I
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 1024
    :cond_0
    :goto_0
    :pswitch_0
    return v10

    .line 970
    :pswitch_1
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 972
    iput-boolean v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 973
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 974
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 978
    :pswitch_2
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 979
    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 980
    .local v3, pointerIndex:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    .line 981
    .local v5, x:I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v6, v7

    .line 985
    .local v6, y:I
    const-string v7, "persist.sys.oppo.region"

    const-string v8, "CN"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, region:Ljava/lang/String;
    const-string v7, "CN"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 987
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->invalidateKey(II)V

    .line 992
    :goto_1
    iget-boolean v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->flag:Z

    if-eqz v7, :cond_1

    .line 993
    iput v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLastMotionX:I

    .line 994
    iput v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLastMotionY:I

    .line 995
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->flag:Z

    .line 998
    :cond_1
    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLastMotionX:I

    sub-int/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->TOUCH_SLOP:I

    if-gt v7, v8, :cond_2

    iget v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mLastMotionY:I

    sub-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->TOUCH_SLOP:I

    if-le v7, v8, :cond_0

    .line 1000
    :cond_2
    iput-boolean v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->flag:Z

    goto :goto_0

    .line 989
    :cond_3
    invoke-direct {p0, v5, v6}, Lcom/oppo/widget/OppoTouchSearchView;->invalidateKeyExp(II)V

    goto :goto_1

    .line 1008
    .end local v3           #pointerIndex:I
    .end local v4           #region:Ljava/lang/String;
    .end local v5           #x:I
    .end local v6           #y:I
    :pswitch_3
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1009
    iput-boolean v10, p0, Lcom/oppo/widget/OppoTouchSearchView;->flag:Z

    .line 1010
    const/4 v7, -0x1

    iput v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mActivePointerId:I

    .line 1011
    iput-boolean v9, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchFlag:Z

    .line 1012
    const-string v7, ""

    iput-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->mDisplayKey:Ljava/lang/CharSequence;

    .line 1013
    iget-object v7, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    iget v8, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedTime:I

    int-to-long v8, v8

    invoke-virtual {p0, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1014
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1018
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 967
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 1230
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1231
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 502
    iget v0, p0, Landroid/view/View;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/view/View;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/view/View;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/view/View;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 503
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mFrameChanged:Z

    .line 505
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setName([Ljava/lang/String;)V
    .locals 5
    .parameter "firstname"

    .prologue
    .line 1205
    array-length v1, p1

    .line 1206
    .local v1, length:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-gt v0, v2, :cond_1

    .line 1207
    if-gt v0, v1, :cond_0

    .line 1208
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1206
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1210
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1213
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 1214
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1213
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1217
    :cond_2
    iget v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWinSubHeight:I

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 1218
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1219
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/PopupWindow;->update(II)V

    .line 1221
    :cond_3
    return-void
.end method

.method public setPopText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "character"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 819
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 820
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupDefaultHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/PopupWindow;->update(II)V

    .line 825
    :goto_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    const/16 v0, 0x41

    .line 827
    .local v0, charA:C
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 828
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 829
    const/4 v3, 0x1

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 831
    :cond_0
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v3

    .line 832
    .local v2, keysCount:I
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    add-int/lit8 v4, v2, -0x1

    if-le v3, v4, :cond_3

    .line 844
    :cond_1
    :goto_1
    return-void

    .line 822
    .end local v0           #charA:C
    .end local v2           #keysCount:I
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v3, p0, v6, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 835
    .restart local v0       #charA:C
    .restart local v2       #keysCount:I
    :cond_3
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-eq v3, v4, :cond_5

    iget-boolean v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v3, :cond_5

    .line 836
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 837
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 836
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 839
    :cond_4
    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 840
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 841
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 843
    .end local v1           #i:I
    :cond_5
    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    iput v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->lastKeyIndices:I

    goto :goto_1
.end method

.method public setPopupTextView(Ljava/lang/String;)V
    .locals 8
    .parameter "character"

    .prologue
    const/4 v7, 0x0

    .line 785
    const-string v4, "persist.sys.oppo.region"

    const-string v5, "CN"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 786
    .local v3, region:Ljava/lang/String;
    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 787
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoTouchSearchView;->setPopupTextViewExp(Ljava/lang/String;)V

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 798
    :goto_1
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    const/16 v0, 0x41

    .line 800
    .local v0, charA:C
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 801
    const-string v4, "#"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    const/4 v4, 0x1

    iput v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    .line 804
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    array-length v2, v4

    .line 805
    .local v2, keysCount:I
    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    add-int/lit8 v5, v2, -0x1

    if-gt v4, v5, :cond_0

    .line 808
    iget-boolean v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherUnion:Z

    if-nez v4, :cond_0

    .line 809
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 810
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 795
    .end local v0           #charA:C
    .end local v1           #i:I
    .end local v2           #keysCount:I
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v4, p0, v7, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 812
    .restart local v0       #charA:C
    .restart local v1       #i:I
    .restart local v2       #keysCount:I
    :cond_4
    iget-object v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    iget v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/oppo/widget/OppoTouchSearchView;->keyIndices:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 813
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 814
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public setPopupTextViewExp(Ljava/lang/String;)V
    .locals 7
    .parameter "character"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 1404
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->isSectionsValidate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1408
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1409
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 1414
    :goto_1
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1416
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->loadKeysExp()V

    .line 1418
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->KEYS:[Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1419
    .local v0, drawablePos:I
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/oppo/widget/OppoTouchSearchView;->findKeyPostion([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1420
    .local v1, keyPos:I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 1422
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeys:[Lcom/oppo/widget/OppoTouchSearchView$Key;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mKeyPressedDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoTouchSearchView$Key;->setKeyDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1423
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 1424
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 1411
    .end local v0           #drawablePos:I
    .end local v1           #keyPos:I
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocalx:I

    iget v4, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowLocaly:I

    invoke-virtual {v2, p0, v6, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1
.end method

.method public setPopupWindowSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1284
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    if-eq v0, p2, :cond_1

    .line 1285
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    .line 1286
    iput p2, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    .line 1287
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1288
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1289
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1291
    :cond_1
    return-void
.end method

.method public setPopupWindowTextColor(I)V
    .locals 2
    .parameter "textColor"

    .prologue
    .line 1324
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    if-eq v0, p1, :cond_0

    .line 1325
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    .line 1326
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1327
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1329
    :cond_0
    return-void
.end method

.method public setPopupWindowTextSize(I)V
    .locals 2
    .parameter "textSize"

    .prologue
    .line 1311
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    if-eq v0, p1, :cond_0

    .line 1312
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    .line 1313
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1314
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1316
    :cond_0
    return-void
.end method

.method public setPopupWindowTopMinCoordinate(I)V
    .locals 1
    .parameter "top"

    .prologue
    .line 1300
    iget v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    if-eq v0, p1, :cond_0

    .line 1301
    iput p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mPopupWindowMinTop:I

    .line 1303
    :cond_0
    return-void
.end method

.method public setSmartShowMode([Ljava/lang/Object;[I)V
    .locals 17
    .parameter "sections"
    .parameter "counts"

    .prologue
    .line 1525
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v14, 0x0

    aget-object v14, p1, v14

    check-cast v14, Ljava/lang/String;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1526
    :cond_0
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, " "

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1527
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 1592
    :goto_0
    return-void

    .line 1532
    :cond_1
    const/4 v12, 0x0

    .local v12, start:I
    const/4 v9, 0x0

    .line 1533
    .local v9, secStart:I
    const/4 v14, 0x0

    aget v14, p2, v14

    const/high16 v15, -0x8000

    if-ne v14, v15, :cond_2

    .line 1534
    const/4 v9, 0x1

    .line 1537
    :cond_2
    move-object/from16 v0, p1

    array-length v8, v0

    .line 1538
    .local v8, secLength:I
    move-object/from16 v0, p2

    array-length v2, v0

    .line 1539
    .local v2, cntLength:I
    const/16 v14, 0x1b

    if-le v8, v14, :cond_7

    .line 1541
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 1543
    const/16 v14, 0x17

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1544
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "*"

    aput-object v16, v14, v15

    .line 1545
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/16 v16, 0x1

    aget-object v14, p1, v9

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v16

    .line 1546
    add-int/lit8 v12, v12, 0x2

    .line 1547
    add-int/lit8 v9, v9, 0x1

    .line 1549
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/16 v16, 0x16

    add-int/lit8 v14, v8, -0x1

    aget-object v14, p1, v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v16

    .line 1550
    add-int/lit8 v2, v2, -0x1

    .line 1552
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1555
    .local v1, cloneCnt:[I
    const/16 v5, 0x14

    .line 1556
    .local v5, length:I
    :goto_1
    if-lez v5, :cond_5

    .line 1557
    const/4 v7, 0x0

    .local v7, pos:I
    const/4 v6, 0x0

    .line 1558
    .local v6, max:I
    move v3, v9

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 1559
    aget v14, v1, v3

    if-le v14, v6, :cond_3

    .line 1560
    aget v6, v1, v3

    .line 1561
    move v7, v3

    .line 1558
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1564
    :cond_4
    const/4 v14, 0x0

    aput v14, v1, v7

    .line 1565
    add-int/lit8 v5, v5, -0x1

    .line 1566
    goto :goto_1

    .line 1568
    .end local v3           #i:I
    .end local v6           #max:I
    .end local v7           #pos:I
    :cond_5
    move v4, v9

    .local v4, j:I
    move v13, v12

    .end local v12           #start:I
    .local v13, start:I
    :goto_3
    if-ge v4, v2, :cond_6

    .line 1569
    aget v14, v1, v4

    if-nez v14, :cond_9

    .line 1570
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v12, v13, 0x1

    .end local v13           #start:I
    .restart local v12       #start:I
    aget-object v14, p1, v4

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v13

    .line 1568
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v13, v12

    .end local v12           #start:I
    .restart local v13       #start:I
    goto :goto_3

    :cond_6
    move v12, v13

    .line 1590
    .end local v1           #cloneCnt:[I
    .end local v4           #j:I
    .end local v5           #length:I
    .end local v13           #start:I
    .restart local v12       #start:I
    :goto_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    .line 1591
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 1576
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mWhetherDrawDot:Z

    .line 1578
    add-int/lit8 v11, v8, 0x1

    .line 1579
    .local v11, size:I
    sub-int/2addr v11, v9

    .line 1581
    new-array v14, v11, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    .line 1582
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "*"

    aput-object v16, v14, v15

    .line 1583
    add-int/lit8 v12, v12, 0x1

    move v10, v9

    .end local v9           #secStart:I
    .local v10, secStart:I
    move v13, v12

    .line 1585
    .end local v12           #start:I
    .restart local v13       #start:I
    :goto_6
    if-ge v10, v8, :cond_8

    .line 1586
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoTouchSearchView;->mSections:[Ljava/lang/String;

    add-int/lit8 v12, v13, 0x1

    .end local v13           #start:I
    .restart local v12       #start:I
    add-int/lit8 v9, v10, 0x1

    .end local v10           #secStart:I
    .restart local v9       #secStart:I
    aget-object v14, p1, v10

    check-cast v14, Ljava/lang/String;

    aput-object v14, v15, v13

    move v10, v9

    .end local v9           #secStart:I
    .restart local v10       #secStart:I
    move v13, v12

    .end local v12           #start:I
    .restart local v13       #start:I
    goto :goto_6

    :cond_8
    move v9, v10

    .end local v10           #secStart:I
    .restart local v9       #secStart:I
    move v12, v13

    .end local v13           #start:I
    .restart local v12       #start:I
    goto :goto_5

    .end local v11           #size:I
    .end local v12           #start:I
    .restart local v1       #cloneCnt:[I
    .restart local v4       #j:I
    .restart local v5       #length:I
    .restart local v13       #start:I
    :cond_9
    move v12, v13

    .end local v13           #start:I
    .restart local v12       #start:I
    goto :goto_4
.end method

.method public setTouchBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 1240
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 1244
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, region:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1246
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1251
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1252
    return-void

    .line 1248
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public setTouchSearchActionListener(Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 863
    iput-object p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mTouchSearchActionListener:Lcom/oppo/widget/OppoTouchSearchView$TouchSearchActionListener;

    .line 864
    return-void
.end method

.method public setUnionEnable(Z)V
    .locals 3
    .parameter "unionEnable"

    .prologue
    .line 1260
    iget-boolean v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    if-eq v1, p1, :cond_0

    .line 1261
    iput-boolean p1, p0, Lcom/oppo/widget/OppoTouchSearchView;->mUnionEnable:Z

    .line 1262
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->updateBackGroundBound()V

    .line 1266
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, region:Ljava/lang/String;
    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1268
    invoke-direct {p0}, Lcom/oppo/widget/OppoTouchSearchView;->update()V

    .line 1273
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1275
    .end local v0           #region:Ljava/lang/String;
    :cond_0
    return-void

    .line 1270
    .restart local v0       #region:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoTouchSearchView;->updateExp(Z)V

    goto :goto_0
.end method

.method public startPostDelayed()V
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedClosed:Ljava/lang/Runnable;

    iget v1, p0, Lcom/oppo/widget/OppoTouchSearchView;->delayedTime:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 855
    return-void
.end method
