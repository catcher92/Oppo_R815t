.class public Lcom/oppo/widget/OppoNumberPicker;
.super Landroid/widget/LinearLayout;
.source "OppoNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoNumberPicker$CustomEditText;,
        Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;,
        Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;,
        Lcom/oppo/widget/OppoNumberPicker$InputTextFilter;,
        Lcom/oppo/widget/OppoNumberPicker$Formatter;,
        Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;,
        Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final BUTTON_ALPHA_OPAQUE:I = 0x1

.field private static final BUTTON_ALPHA_TRANSPARENT:I = 0x0

.field private static final CHANGE_CURRENT_BY_ONE_SCROLL_DURATION:I = 0x12c

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C = null

.field public static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_DIR:Ljava/lang/String; = "/data/thaicalendar/"

.field public static final FILE_FULL_PATH_NAME_FOR_THAI_CALENDAR_FILE:Ljava/lang/String; = "enable_state.properties"

.field public static final KEY_THAI_CALENDAR_ENABLE_STATE:Ljava/lang/String; = "key_thai_calendar_enable_state"

.field private static final LOG_TAG:Ljava/lang/String; = "OppoNumberPicker"

.field private static final PROPERTY_BUTTON_ALPHA:Ljava/lang/String; = "alpha"

.field private static final PROPERTY_SELECTOR_PAINT_ALPHA:Ljava/lang/String; = "selectorPaintAlpha"

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_BRIGHT_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_DIM_ALPHA:I = 0xff

.field private static final SELECTOR_WHEEL_STATE_LARGE:I = 0x2

.field private static final SELECTOR_WHEEL_STATE_NONE:I = 0x0

.field private static final SELECTOR_WHEEL_STATE_SMALL:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final SHOW_INPUT_CONTROLS_DELAY_MILLIS:I = 0x0

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field public static final TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter; = null

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

.field private mAdjustScrollerOnUpEvent:Z

.field mBlueEnd:I

.field mBlueStart:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCheckBeginEditOnUpEvent:Z

.field private mClickSoundId:I

.field private mClipLength:I

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private final mDimSelectorWheelAnimator:Landroid/animation/Animator;

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private final mFlingable:Z

.field private mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

.field mGreenEnd:I

.field mGreenStart:I

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field mIsBold:Z

.field private mLastDownEventY:F

.field private mLastMotionEventY:F

.field private mLastUpEventTimeMillis:J

.field private mLongPressUpdateInterval:J

.field private mLunarLeap11:Ljava/lang/String;

.field private mLunarLeap12:Ljava/lang/String;

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOffsetHeight:I

.field private mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field mRedEnd:I

.field mRedStart:I

.field private mScrollState:I

.field private mScrollWheelAndFadingEdgesInitialized:Z

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSelectorWheelState:I

.field private mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

.field private final mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

.field private final mShowInputControlsAnimimationDuration:J

.field private final mSolidColor:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mTempRect:Landroid/graphics/Rect;

.field mTextEnd:I

.field private final mTextSize:I

.field mTextStart:I

.field private mThaiCalendarState:Z

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-string v0, "OppoNumberPicker"

    sput-object v0, Lcom/oppo/widget/OppoNumberPicker;->TAG:Ljava/lang/String;

    .line 162
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/oppo/widget/OppoNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    .line 223
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/widget/OppoNumberPicker;->DIGIT_CHARACTERS:[C

    .line 239
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$1;

    invoke-direct {v0}, Lcom/oppo/widget/OppoNumberPicker$1;-><init>()V

    sput-object v0, Lcom/oppo/widget/OppoNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    return-void

    .line 223
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 592
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 601
    const v0, 0xc010403

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 602
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 612
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    const/16 v17, 0x4a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedStart:I

    .line 107
    const/16 v17, 0x4a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenStart:I

    .line 108
    const/16 v17, 0x4a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueStart:I

    .line 110
    const/16 v17, 0xb

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedEnd:I

    .line 111
    const/16 v17, 0x98

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenEnd:I

    .line 112
    const/16 v17, 0x4a

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueEnd:I

    .line 114
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextStart:I

    .line 115
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextEnd:I

    .line 343
    const-wide/16 v17, 0x12c

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J

    .line 348
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 353
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 371
    const/high16 v17, -0x8000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    .line 499
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    .line 504
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    .line 2208
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->audioManager:Landroid/media/AudioManager;

    .line 2233
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mThaiCalendarState:Z

    .line 615
    sget-object v17, Landroid/R$styleable;->NumberPicker:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 617
    .local v5, attributesArray:Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSolidColor:I

    .line 621
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    .line 623
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    new-instance v17, Landroid/media/SoundPool;

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x3

    invoke-direct/range {v17 .. v20}, Landroid/media/SoundPool;-><init>(III)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mSoundPool:Landroid/media/SoundPool;

    .line 627
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/media/audio/ui/numberpicker_click.ogg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 630
    .local v8, filePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mSoundPool:Landroid/media/SoundPool;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mClickSoundId:I

    .line 633
    sget-object v17, Loppo/R$styleable;->OppoNumberPicker:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 649
    .local v12, oppoAttributesArray:Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    .line 651
    const/16 v17, 0x3

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    .line 653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 655
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "minHeight > maxHeight"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 657
    :cond_0
    const/16 v17, 0x4

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    .line 659
    const/16 v17, 0x5

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    .line 662
    const/16 v17, 0x6

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    .line 664
    const/16 v17, 0xa

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextStart:I

    .line 666
    const/16 v17, 0x9

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTextEnd:I

    .line 669
    const/16 v17, 0x7

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mOffsetHeight:I

    .line 671
    const/16 v17, 0x8

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mClipLength:I

    .line 673
    const/16 v17, 0xb

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mIsBold:Z

    .line 676
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 677
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "minWidth > maxWidth"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 679
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    move/from16 v17, v0

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mComputeMaxWidth:Z

    .line 680
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 682
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10e0002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    .line 690
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 691
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 693
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 695
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v17, 0xc090400

    const/16 v18, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-virtual {v9, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 697
    new-instance v10, Lcom/oppo/widget/OppoNumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/oppo/widget/OppoNumberPicker$2;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    .line 713
    .local v10, onClickListener:Landroid/view/View$OnClickListener;
    new-instance v11, Lcom/oppo/widget/OppoNumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/oppo/widget/OppoNumberPicker$3;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    .line 727
    .local v11, onLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->isThaiCalendarEnabled()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mThaiCalendarState:Z

    .line 730
    const v17, 0xc020426

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 735
    const v17, 0xc020427

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageButton;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 740
    const v17, 0xc020428

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    new-instance v20, Lcom/oppo/widget/OppoNumberPicker$InputTextFilter;

    invoke-direct/range {v20 .. v21}, Lcom/oppo/widget/OppoNumberPicker$InputTextFilter;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    aput-object v20, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 749
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 750
    .local v6, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mTouchSlop:I

    .line 751
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMinimumFlingVelocity:I

    .line 752
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v17

    div-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mMaximumFlingVelocity:I

    .line 757
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 758
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0xc040402

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap11:Ljava/lang/String;

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0xc040403

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap12:Ljava/lang/String;

    .line 760
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 761
    .local v13, paint:Landroid/graphics/Paint;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 762
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0xc060400

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 768
    .local v7, endColor:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0xc060408

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    .line 770
    .local v16, startColor:I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedStart:I

    .line 771
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mRedEnd:I

    .line 773
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenStart:I

    .line 774
    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mGreenEnd:I

    .line 776
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueStart:I

    .line 777
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mBlueEnd:I

    .line 779
    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 781
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 782
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 785
    const-string v17, "selectorPaintAlpha"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 789
    .local v15, showIncrementButton:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v17, v0

    const-string v18, "alpha"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_3

    invoke-static/range {v17 .. v19}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 791
    .local v14, showDecrementButton:Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v15, v18, v19

    const/16 v19, 0x2

    aput-object v14, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v17, v0

    new-instance v18, Lcom/oppo/widget/OppoNumberPicker$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15, v14}, Lcom/oppo/widget/OppoNumberPicker$4;-><init>(Lcom/oppo/widget/OppoNumberPicker;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    invoke-virtual/range {v17 .. v18}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 819
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v17 .. v20}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 820
    new-instance v17, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v20, 0x4020

    invoke-direct/range {v19 .. v20}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v17 .. v19}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 822
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 823
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 825
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 827
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 837
    :cond_2
    :goto_1
    return-void

    .line 679
    .end local v6           #configuration:Landroid/view/ViewConfiguration;
    .end local v7           #endColor:I
    .end local v9           #inflater:Landroid/view/LayoutInflater;
    .end local v10           #onClickListener:Landroid/view/View$OnClickListener;
    .end local v11           #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #showDecrementButton:Landroid/animation/ObjectAnimator;
    .end local v15           #showIncrementButton:Landroid/animation/ObjectAnimator;
    .end local v16           #startColor:I
    :cond_3
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 832
    .restart local v6       #configuration:Landroid/view/ViewConfiguration;
    .restart local v7       #endColor:I
    .restart local v9       #inflater:Landroid/view/LayoutInflater;
    .restart local v10       #onClickListener:Landroid/view/View$OnClickListener;
    .restart local v11       #onLongClickListener:Landroid/view/View$OnLongClickListener;
    .restart local v13       #paint:Landroid/graphics/Paint;
    .restart local v14       #showDecrementButton:Landroid/animation/ObjectAnimator;
    .restart local v15       #showIncrementButton:Landroid/animation/ObjectAnimator;
    .restart local v16       #startColor:I
    :cond_4
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 833
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto :goto_1

    .line 353
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 785
    :array_1
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 787
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 789
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoNumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrentByOne(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoNumberPicker;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoNumberPicker;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoNumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1302(Lcom/oppo/widget/OppoNumberPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    return v0
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoNumberPicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoNumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoNumberPicker;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoNumberPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoNumberPicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->postChangeCurrentByOneFromLongPress(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoNumberPicker;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoNumberPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoNumberPicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoNumberPicker;)Landroid/animation/AnimatorSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/oppo/widget/OppoNumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoNumberPicker;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method private changeCurrent(I)V
    .locals 2
    .parameter "current"

    .prologue
    .line 1636
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1648
    :goto_0
    return-void

    .line 1640
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    .line 1641
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1643
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1644
    .local v0, previous:I
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->setValue(I)V

    .line 1645
    invoke-direct {p0, v0, p1}, Lcom/oppo/widget/OppoNumberPicker;->notifyChange(II)V

    .line 1646
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->playSoundEffect()V

    goto :goto_0
.end method

.method private changeCurrentByOne(Z)V
    .locals 6
    .parameter "increment"

    .prologue
    const/16 v5, 0x12c

    const/4 v1, 0x0

    .line 1657
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1659
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1660
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1661
    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1662
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    .line 1663
    if-eqz p1, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1670
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1678
    :goto_1
    return-void

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1672
    :cond_1
    if-eqz p1, :cond_2

    .line 1673
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    goto :goto_1

    .line 1675
    :cond_2
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1885
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 1886
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1885
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1888
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1889
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1890
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1892
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1893
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1894
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1903
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1904
    .local v2, scrollSelectorValue:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1918
    :goto_0
    return-void

    .line 1907
    :cond_0
    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1908
    :cond_1
    const-string v2, ""

    .line 1917
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1910
    :cond_2
    iget-object v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1911
    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1912
    .local v1, displayedValueIndex:I
    iget-object v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1913
    goto :goto_1

    .line 1914
    .end local v1           #displayedValueIndex:I
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private fadeSelectorWheel(J)V
    .locals 1
    .parameter "animationDuration"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1833
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1834
    return-void
.end method

.method private fling(I)V
    .locals 9
    .parameter "velocityY"

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1791
    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1793
    if-lez p1, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1799
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1800
    return-void

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private forceCompleteChangeCurrentByOneViaScroll()V
    .locals 4

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1686
    .local v0, scroller:Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1687
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1688
    .local v1, yBeforeAbort:I
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1689
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int v2, v3, v1

    .line 1690
    .local v2, yDelta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/oppo/widget/OppoNumberPicker;->scrollBy(II)V

    .line 1692
    .end local v1           #yBeforeAbort:I
    .end local v2           #yDelta:I
    :cond_0
    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1923
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mThaiCalendarState:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 1925
    const-string v1, "persist.sys.oppo.region"

    const-string v2, "CN"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1926
    .local v0, region:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1927
    add-int/lit16 p1, p1, 0x21f

    .line 1931
    .end local v0           #region:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    invoke-interface {v1, p1}, Lcom/oppo/widget/OppoNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 2014
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2016
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2040
    :goto_0
    return v1

    .line 2021
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2023
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2024
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2025
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 2021
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2034
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 2017
    .end local v0           #i:I
    :catch_0
    move-exception v1

    .line 2040
    :goto_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    goto :goto_0

    .line 2035
    .restart local v0       #i:I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .parameter "selectorIndex"

    .prologue
    .line 1856
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1857
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1861
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 1858
    .restart local p1
    :cond_1
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1859
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private gradualChange(IIF)I
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "distance"

    .prologue
    .line 1483
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 1486
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    sub-int p1, p2, v0

    .line 1490
    .end local p1
    :cond_0
    return p1
.end method

.method private hideInputControls()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1806
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1807
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1808
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1809
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1810
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .parameter "selectorIndices"

    .prologue
    .line 1869
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1870
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1869
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1872
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1873
    .local v1, nextScrollSelectorIndex:I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1874
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    .line 1876
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1877
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1878
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1752
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVerticalFadingEdgeEnabled(Z)V

    .line 1753
    iget v0, p0, Landroid/view/View;->mBottom:I

    iget v1, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setFadingEdgeLength(I)V

    .line 1754
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1736
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1737
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1738
    .local v1, selectorIndices:[I
    array-length v5, v1

    iget v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1739
    .local v4, totalTextHeight:I
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1740
    .local v3, totalTextGapHeight:F
    array-length v5, v1

    int-to-float v2, v5

    .line 1741
    .local v2, textGapCount:F
    div-float v5, v3, v2

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    .line 1742
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextSize:I

    iget v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    .line 1744
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1745
    .local v0, editTextTextPosition:I
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    .line 1747
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1748
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1749
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1615
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1616
    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1617
    .local v2, selectorIdices:[I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoNumberPicker;->getValue()I

    move-result v0

    .line 1618
    .local v0, current:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1619
    add-int/lit8 v4, v1, -0x1

    add-int v3, v0, v4

    .line 1620
    .local v3, selectorIndex:I
    iget-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1621
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1623
    :cond_0
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    aput v3, v4, v1

    .line 1624
    iget-object v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1618
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1626
    .end local v3           #selectorIndex:I
    :cond_1
    return-void
.end method

.method private isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1708
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1710
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .line 1712
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThaiCalendarEnabled()Z
    .locals 9

    .prologue
    .line 2245
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2246
    .local v4, prop:Ljava/util/Properties;
    const/4 v2, 0x0

    .line 2247
    .local v2, fis:Ljava/io/FileInputStream;
    const-string v5, "false"

    .line 2249
    .local v5, state:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/thaicalendar/enable_state.properties"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2251
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2252
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2253
    const-string v6, "key_thai_calendar_enable_state"

    invoke-virtual {v4, v6, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 2257
    if-eqz v3, :cond_3

    .line 2259
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 2265
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    const-string v6, "OppoNumberPicker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 2260
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 2262
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 2254
    .end local v1           #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 2255
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v6, "OppoNumberPicker"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2257
    if-eqz v2, :cond_0

    .line 2259
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 2260
    :catch_2
    move-exception v6

    goto :goto_0

    .line 2257
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v2, :cond_1

    .line 2259
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2262
    :cond_1
    :goto_4
    throw v6

    .line 2266
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 2260
    :catch_3
    move-exception v7

    goto :goto_4

    .line 2257
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 2254
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :cond_3
    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .parameter "measureSpec"
    .parameter "maxSize"

    .prologue
    const/high16 v3, 0x4000

    .line 1576
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1587
    .end local p1
    :goto_0
    :sswitch_0
    return p1

    .line 1579
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1580
    .local v1, size:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1581
    .local v0, mode:I
    sparse-switch v0, :sswitch_data_0

    .line 1589
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1585
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1587
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1581
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyChange(II)V
    .locals 2
    .parameter "previous"
    .parameter "current"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;->onValueChange(Lcom/oppo/widget/OppoNumberPicker;II)V

    .line 1978
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 1778
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1781
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    .line 1782
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/oppo/widget/OppoNumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 3
    .parameter "scroller"

    .prologue
    const/4 v2, 0x0

    .line 1760
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1761
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1762
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->postAdjustScrollerCommand(I)V

    .line 1763
    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 1772
    :goto_0
    return-void

    .line 1765
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1766
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->fadeSelectorWheel(J)V

    goto :goto_0

    .line 1769
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1770
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    goto :goto_0
.end method

.method private postAdjustScrollerCommand(I)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    if-nez v0, :cond_0

    .line 2064
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    .line 2068
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2069
    return-void

    .line 2066
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(Z)V
    .locals 1
    .parameter "increment"

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1987
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1988
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1989
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1991
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    #calls: Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->setIncrement(Z)V
    invoke-static {v0, p1}, Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1992
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1993
    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .parameter "selectionStart"
    .parameter "selectionEnd"

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2049
    new-instance v0, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;-><init>(Lcom/oppo/widget/OppoNumberPicker;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    .line 2053
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    #setter for: Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->access$602(Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;I)I

    .line 2054
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    #setter for: Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;->access$702(Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;I)I

    .line 2055
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2056
    return-void

    .line 2051
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1999
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/oppo/widget/OppoNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    if-eqz v0, :cond_1

    .line 2003
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerCommand:Lcom/oppo/widget/OppoNumberPicker$AdjustScrollerCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2005
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 2006
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSetSelectionCommand:Lcom/oppo/widget/OppoNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2008
    :cond_2
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .parameter "minSize"
    .parameter "measuredSize"
    .parameter "measureSpec"

    .prologue
    .line 1603
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1604
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1605
    .local v0, desiredWidth:I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/oppo/widget/OppoNumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1607
    .end local v0           #desiredWidth:I
    .end local p2
    :cond_0
    return p2
.end method

.method private setSelectorPaintAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1701
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1702
    return-void
.end method

.method private setSelectorWheelState(I)V
    .locals 4
    .parameter "selectorWheelState"

    .prologue
    const/4 v3, 0x2

    .line 1719
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    .line 1720
    if-ne p1, v3, :cond_0

    .line 1721
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1724
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v1, :cond_1

    if-ne p1, v3, :cond_1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1726
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    .line 1727
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0xc040459

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1730
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    .line 1731
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1733
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private showInputControls(J)V
    .locals 1
    .parameter "animationDuration"

    .prologue
    .line 1819
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1821
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1822
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1823
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1233
    iget-boolean v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    const/4 v4, 0x0

    .line 1237
    .local v4, maxTextWidth:I
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1238
    const/4 v3, 0x0

    .line 1239
    .local v3, maxDigitWidth:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1240
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1241
    .local v1, digitWidth:F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1242
    move v3, v1

    .line 1239
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1245
    .end local v1           #digitWidth:F
    :cond_3
    const/4 v5, 0x0

    .line 1246
    .local v5, numberOfDigits:I
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1247
    .local v0, current:I
    :goto_2
    if-lez v0, :cond_4

    .line 1248
    add-int/lit8 v5, v5, 0x1

    .line 1249
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1251
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1261
    .end local v0           #current:I
    .end local v3           #maxDigitWidth:F
    .end local v5           #numberOfDigits:I
    :cond_5
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1262
    iget v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1263
    iget v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1264
    iput v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    .line 1268
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1253
    .end local v2           #i:I
    :cond_6
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1254
    .local v7, valueCount:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1255
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1256
    .local v6, textWidth:F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1257
    float-to-int v4, v6

    .line 1254
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1266
    .end local v6           #textWidth:F
    .end local v7           #valueCount:I
    :cond_8
    iget v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    iput v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateIncrementAndDecrementButtonsVisibilityState()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1840
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-ge v0, v1, :cond_2

    .line 1841
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1845
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-le v0, v1, :cond_3

    .line 1846
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1850
    :goto_1
    return-void

    .line 1843
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1848
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateInputTextView()V
    .locals 6

    .prologue
    .line 1957
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1958
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1962
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1964
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1965
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0xc04045a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1967
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1969
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    return-void

    .line 1960
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1935
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1936
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1938
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1944
    :goto_0
    return-void

    .line 1941
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oppo/widget/OppoNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1942
    .local v0, current:I
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1067
    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-nez v2, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1071
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1072
    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1073
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1077
    :cond_2
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1078
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1079
    .local v0, currentScrollerY:I
    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_3

    .line 1080
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1082
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/oppo/widget/OppoNumberPicker;->scrollBy(II)V

    .line 1083
    iput v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mPreviousScrollerY:I

    .line 1084
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1085
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1093
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1453
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1049
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1050
    .local v0, keyCode:I
    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    .line 1051
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1053
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1030
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1044
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1033
    :pswitch_0
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1034
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1035
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->forceCompleteChangeCurrentByOneViaScroll()V

    goto :goto_0

    .line 1041
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 1030
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 1058
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1059
    .local v0, action:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1060
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1062
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1465
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1469
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1471
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    .line 1472
    .local v2, drawTime:J
    const/4 v4, 0x0

    .local v4, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 1473
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1474
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1472
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1477
    :cond_1
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2, v3}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    .line 1480
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #drawTime:J
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1430
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1365
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1333
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1143
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1424
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1324
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1281
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1436
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1439
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1441
    iget-wide v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    .line 1443
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 889
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 890
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1447
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 1448
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    .line 1496
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-nez v12, :cond_0

    .line 1560
    :goto_0
    return-void

    .line 1500
    :cond_0
    iget v12, p0, Landroid/view/View;->mRight:I

    iget v13, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v10, v12

    .line 1501
    .local v10, x:F
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    int-to-float v11, v12

    .line 1503
    .local v11, y:F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 1510
    .local v6, restoreCount:I
    iget-object v9, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1511
    .local v9, selectorIndices:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v12, v9

    if-ge v4, v12, :cond_5

    .line 1512
    aget v8, v9, v4

    .line 1513
    .local v8, selectorIndex:I
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1518
    .local v7, scrollSelectorValue:Ljava/lang/String;
    const/4 v12, 0x1

    if-ne v4, v12, :cond_1

    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_3

    .line 1520
    :cond_1
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mRedStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mRedEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v5

    .line 1521
    .local v5, red:I
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mGreenStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mGreenEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v3

    .line 1522
    .local v3, green:I
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mBlueStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mBlueEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v0

    .line 1523
    .local v0, blue:I
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextStart:I

    iget v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mTextEnd:I

    invoke-direct {p0, v12, v13, v11}, Lcom/oppo/widget/OppoNumberPicker;->gradualChange(IIF)I

    move-result v2

    .line 1525
    .local v2, f:I
    invoke-static {v5, v3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 1526
    .local v1, color:I
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1528
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap11:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/oppo/widget/OppoNumberPicker;->mLunarLeap12:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1530
    :cond_2
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    mul-int/lit8 v13, v2, 0x3

    div-int/lit8 v13, v13, 0x4

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1536
    :goto_2
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1538
    .end local v0           #blue:I
    .end local v1           #color:I
    .end local v2           #f:I
    .end local v3           #green:I
    .end local v5           #red:I
    :cond_3
    iget v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1511
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1532
    .restart local v0       #blue:I
    .restart local v1       #color:I
    .restart local v2       #f:I
    .restart local v3       #green:I
    .restart local v5       #red:I
    :cond_4
    iget-object v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float v13, v2

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_2

    .line 1558
    .end local v0           #blue:I
    .end local v1           #color:I
    .end local v2           #f:I
    .end local v3           #green:I
    .end local v5           #red:I
    .end local v7           #scrollSelectorValue:Ljava/lang/String;
    .end local v8           #selectorIndex:I
    :cond_5
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 912
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingable:Z

    if-nez v5, :cond_1

    :cond_0
    move v3, v4

    .line 959
    :goto_0
    return v3

    .line 915
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_2
    :pswitch_0
    move v3, v4

    .line 959
    goto :goto_0

    .line 917
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastDownEventY:F

    iput v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastMotionEventY:F

    .line 918
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->removeAllCallbacks()V

    .line 919
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 920
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mDimSelectorWheelAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->cancel()V

    .line 921
    iput-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 922
    iput-boolean v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 923
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-ne v5, v6, :cond_5

    .line 924
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 925
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 927
    .local v2, scrollersFinished:Z
    :goto_1
    if-nez v2, :cond_3

    .line 928
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 929
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v5, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 930
    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 932
    :cond_3
    iput-boolean v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 933
    iput-boolean v3, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 934
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto :goto_0

    .end local v2           #scrollersFinished:Z
    :cond_4
    move v2, v4

    .line 925
    goto :goto_1

    .line 937
    :cond_5
    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/oppo/widget/OppoNumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v5}, Lcom/oppo/widget/OppoNumberPicker;->isEventInVisibleViewHitRect(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v3, v4

    .line 939
    goto :goto_0

    .line 941
    :cond_7
    iput-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    .line 942
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 943
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto :goto_0

    .line 947
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 948
    .local v0, currentMoveY:F
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastDownEventY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 949
    .local v1, deltaDownY:I
    iget v5, p0, Lcom/oppo/widget/OppoNumberPicker;->mTouchSlop:I

    if-le v1, v5, :cond_2

    .line 950
    iput-boolean v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 951
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 952
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 953
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->hideInputControls()V

    goto/16 :goto_0

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 842
    .local v20, msrdWdth:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    .line 845
    .local v19, msrdHght:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 846
    .local v12, inctBtnMsrdWdth:I
    sub-int v21, v20, v12

    div-int/lit8 v9, v21, 0x2

    .line 847
    .local v9, incrBtnLeft:I
    const/4 v11, 0x0

    .line 848
    .local v11, incrBtnTop:I
    add-int v10, v9, v12

    .line 849
    .local v10, incrBtnRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    add-int/lit8 v8, v21, 0x0

    .line 850
    .local v8, incrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1, v10, v8}, Landroid/view/View;->layout(IIII)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 854
    .local v16, inptTxtMsrdWdth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 855
    .local v15, inptTxtMsrdHght:I
    sub-int v21, v20, v16

    div-int/lit8 v14, v21, 0x2

    .line 856
    .local v14, inptTxtLeft:I
    sub-int v21, v19, v15

    div-int/lit8 v18, v21, 0x2

    .line 857
    .local v18, inptTxtTop:I
    add-int v17, v14, v16

    .line 858
    .local v17, inptTxtRight:I
    add-int v13, v18, v15

    .line 859
    .local v13, inptTxtBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v14, v1, v2, v13}, Landroid/view/View;->layout(IIII)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 872
    .local v5, decrBtnMsrdWdth:I
    sub-int v21, v20, v5

    div-int/lit8 v4, v21, 0x2

    .line 873
    .local v4, decrBtnLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v7, v19, v21

    .line 874
    .local v7, decrBtnTop:I
    add-int v6, v4, v5

    .line 875
    .local v6, decrBtnRight:I
    move/from16 v3, v19

    .line 876
    .local v3, decrBtnBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7, v6, v3}, Landroid/view/View;->layout(IIII)V

    .line 878
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 879
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/oppo/widget/OppoNumberPicker;->mScrollWheelAndFadingEdgesInitialized:Z

    .line 881
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheel()V

    .line 882
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeFadingEdges()V

    .line 884
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 895
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/oppo/widget/OppoNumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 896
    .local v2, newWidthMeasureSpec:I
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/oppo/widget/OppoNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 897
    .local v1, newHeightMeasureSpec:I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 899
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/oppo/widget/OppoNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 901
    .local v3, widthSize:I
    iget v4, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/oppo/widget/OppoNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 903
    .local v0, heightSize:I
    invoke-virtual {p0, v3, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 908
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 964
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1024
    :goto_0
    return v8

    .line 967
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 968
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 970
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 972
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move v8, v9

    .line 1024
    goto :goto_0

    .line 974
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 975
    .local v1, currentMoveY:F
    iget-boolean v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-nez v10, :cond_2

    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mScrollState:I

    if-eq v10, v9, :cond_3

    .line 977
    :cond_2
    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 978
    .local v2, deltaDownY:I
    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_3

    .line 979
    iput-boolean v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 980
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 983
    .end local v2           #deltaDownY:I
    :cond_3
    iget v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastMotionEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 984
    .local v3, deltaMoveY:I
    invoke-virtual {p0, v8, v3}, Lcom/oppo/widget/OppoNumberPicker;->scrollBy(II)V

    .line 985
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 986
    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastMotionEventY:F

    goto :goto_1

    .line 989
    .end local v1           #currentMoveY:F
    .end local v3           #deltaMoveY:I
    :pswitch_1
    iget-boolean v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    if-eqz v10, :cond_4

    .line 990
    iput-boolean v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mCheckBeginEditOnUpEvent:Z

    .line 991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastUpEventTimeMillis:J

    sub-long v4, v10, v12

    .line 992
    .local v4, deltaTapTimeMillis:J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_4

    .line 993
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoNumberPicker;->setSelectorWheelState(I)V

    .line 994
    iget-wide v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mShowInputControlsAnimimationDuration:J

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoNumberPicker;->showInputControls(J)V

    .line 1000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastUpEventTimeMillis:J

    move v8, v9

    .line 1001
    goto :goto_0

    .line 1004
    .end local v4           #deltaTapTimeMillis:J
    :cond_4
    iget-object v7, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1005
    .local v7, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v7, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1006
    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v6, v10

    .line 1007
    .local v6, initialVelocity:I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 1008
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoNumberPicker;->fling(I)V

    .line 1009
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->onScrollStateChange(I)V

    .line 1019
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 1020
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1021
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mLastUpEventTimeMillis:J

    goto/16 :goto_1

    .line 1011
    :cond_6
    iget-boolean v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScrollerOnUpEvent:Z

    if-eqz v10, :cond_7

    .line 1012
    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/oppo/widget/OppoNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1013
    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 1016
    :cond_7
    sget v8, Lcom/oppo/widget/OppoNumberPicker;->SHOW_INPUT_CONTROLS_DELAY_MILLIS:I

    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoNumberPicker;->postAdjustScrollerCommand(I)V

    goto :goto_2

    .line 972
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public playSoundEffect()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 2226
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mClickSoundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2228
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 1108
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorWheelState:I

    if-nez v1, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 1111
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    .line 1112
    .local v0, selectorIndices:[I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1114
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1117
    :cond_2
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    aget v1, v0, v3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1119
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1122
    :cond_3
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1123
    :cond_4
    :goto_1
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_5

    .line 1124
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1125
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->decrementSelectorIndices([I)V

    .line 1126
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    .line 1127
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1128
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1131
    :cond_5
    :goto_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1132
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    .line 1133
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->incrementSelectorIndices([I)V

    .line 1134
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoNumberPicker;->changeCurrent(I)V

    .line 1135
    iget-boolean v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    aget v1, v0, v3

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_5

    .line 1136
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 1566
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .parameter "displayedValues"

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1420
    :goto_0
    return-void

    .line 1409
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1410
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1412
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1417
    :goto_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1418
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1419
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1100
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1101
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1102
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1103
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1104
    return-void
.end method

.method public setFormatter(Lcom/oppo/widget/OppoNumberPicker$Formatter;)V
    .locals 1
    .parameter "formatter"

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1182
    :goto_0
    return-void

    .line 1179
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mFormatter:Lcom/oppo/widget/OppoNumberPicker$Formatter;

    .line 1180
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1181
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .parameter "maxValue"

    .prologue
    .line 1374
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1389
    :goto_0
    return-void

    .line 1377
    :cond_0
    if-gez p1, :cond_1

    .line 1378
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1380
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1381
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1382
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1384
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1385
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1386
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1387
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1388
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1384
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .parameter "minValue"

    .prologue
    .line 1342
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1357
    :goto_0
    return-void

    .line 1345
    :cond_0
    if-gez p1, :cond_1

    .line 1346
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1348
    :cond_1
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    .line 1349
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1350
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    iput v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1352
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1353
    .local v0, wrapSelectorWheel:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1354
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1355
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1356
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1352
    .end local v0           #wrapSelectorWheel:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .parameter "intervalMillis"

    .prologue
    .line 1315
    iput-wide p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mLongPressUpdateInterval:J

    .line 1316
    return-void
.end method

.method public setOnScrollListener(Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnScrollListener:Lcom/oppo/widget/OppoNumberPicker$OnScrollListener;

    .line 1162
    return-void
.end method

.method public setOnValueChangedListener(Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;)V
    .locals 0
    .parameter "onValueChangedListener"

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mOnValueChangeListener:Lcom/oppo/widget/OppoNumberPicker$OnValueChangeListener;

    .line 1153
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1213
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    .line 1227
    :goto_0
    return-void

    .line 1216
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 1217
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    .line 1219
    :cond_1
    :goto_1
    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_2

    .line 1220
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    .line 1222
    :cond_2
    :goto_2
    iput p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mValue:I

    .line 1223
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->initializeSelectorWheelIndices()V

    .line 1224
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateInputTextView()V

    .line 1225
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1226
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1217
    :cond_3
    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    goto :goto_1

    .line 1220
    :cond_4
    iget p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    goto :goto_2
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2
    .parameter "wrapSelectorWheel"

    .prologue
    .line 1295
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/oppo/widget/OppoNumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Range less than selector items count."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1298
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_1

    .line 1299
    iput-boolean p1, p0, Lcom/oppo/widget/OppoNumberPicker;->mWrapSelectorWheel:Z

    .line 1300
    invoke-direct {p0}, Lcom/oppo/widget/OppoNumberPicker;->updateIncrementAndDecrementButtonsVisibilityState()V

    .line 1302
    :cond_1
    return-void
.end method
