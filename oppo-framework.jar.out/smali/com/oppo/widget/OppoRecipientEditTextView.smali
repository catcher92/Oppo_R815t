.class public Lcom/oppo/widget/OppoRecipientEditTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "OppoRecipientEditTextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/oppo/widget/OppoAlternatesUtil$OnCheckedItemChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoRecipientEditTextView$OppoRecipientChipShadow;,
        Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;,
        Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;,
        Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;,
        Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;
    }
.end annotation


# static fields
.field static final CHIP_LIMIT:I = 0x2

.field private static final COMMIT_CHAR_CHINA_COMMA:C = '\uff0c'

.field private static final COMMIT_CHAR_COMMA:C = ','

.field private static final COMMIT_CHAR_SEMICOLON:C = ';'

.field private static final COMMIT_CHAR_SPACE:C = ' '

.field private static DISMISS:I = 0x0

.field private static final DISMISS_DELAY:J = 0x12cL

.field private static final MAX_CHIPS_PARSED:I = 0x32

.field public static final QUERY_TYPE_EMAIL:I = 0x0

.field public static final QUERY_TYPE_PHONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoRecipientEditTextView"

.field private static sSelectedTextColor:I


# instance fields
.field private COMMA_PATTERN:Ljava/util/regex/Pattern;

.field private final mAddTextWatcher:Ljava/lang/Runnable;

.field private mAddressLayout:I

.field private mAddressPopup:Landroid/widget/ListPopupWindow;

.field private mAlternatesLayout:I

.field private mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAlternatesPopup:Landroid/widget/ListPopupWindow;

.field private mCheckedItem:I

.field private mChipBackground:Landroid/graphics/drawable/Drawable;

.field private mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

.field private mChipDelete:Landroid/graphics/drawable/Drawable;

.field private mChipFontSize:F

.field private mChipHeight:F

.field private mChipPadding:I

.field private mCopyAddress:Ljava/lang/String;

.field private mCopyDialog:Landroid/app/Dialog;

.field private mCopyViewRes:I

.field private mCursorVisible:Z

.field private mDefaultContactPhoto:Landroid/graphics/Bitmap;

.field private mDelayedShrink:Ljava/lang/Runnable;

.field private mDragEnabled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandlePendingChips:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIndividualReplacements:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

.field private mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

.field private mLineSpacingExtra:F

.field private mMoreChip:Landroid/text/style/ImageSpan;

.field private mMoreItem:Landroid/widget/TextView;

.field private mNoChips:Z

.field private mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

.field private final mPendingChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChipsCount:I

.field private mQueryType:I

.field private mRemovedSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

.field private mShouldShrink:Z

.field private mShowPhoto:Z

.field private mTemporaryRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoRecipientChip;",
            ">;"
        }
    .end annotation
.end field

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

.field private mTriedGettingScrollView:Z

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-string v0, "dismiss"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/oppo/widget/OppoRecipientEditTextView;->DISMISS:I

    .line 135
    const/4 v0, -0x1

    sput v0, Lcom/oppo/widget/OppoRecipientEditTextView;->sSelectedTextColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 255
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    iput-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    .line 139
    iput v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mQueryType:I

    .line 142
    iput-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    .line 178
    iput v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    .line 180
    iput-boolean v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    .line 190
    iput-boolean v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mShouldShrink:Z

    .line 217
    iput-boolean v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mDragEnabled:Z

    .line 219
    iput-boolean v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mShowPhoto:Z

    .line 221
    iput-boolean v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    .line 225
    new-instance v0, Lcom/oppo/widget/OppoRecipientEditTextView$1;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoRecipientEditTextView$1;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/oppo/widget/OppoRecipientEditTextView$2;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoRecipientEditTextView$2;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Lcom/oppo/widget/OppoRecipientEditTextView$3;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoRecipientEditTextView$3;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    .line 257
    sget v0, Lcom/oppo/widget/OppoRecipientEditTextView;->sSelectedTextColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/oppo/widget/OppoRecipientEditTextView;->sSelectedTextColor:I

    .line 260
    :cond_0
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    .line 261
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    .line 262
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    .line 263
    new-instance v0, Lcom/oppo/widget/OppoRecipientEditTextView$4;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoRecipientEditTextView$4;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 276
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 277
    invoke-virtual {p0, p0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 279
    new-instance v0, Lcom/oppo/widget/OppoRecipientEditTextView$5;

    invoke-direct {v0, p0}, Lcom/oppo/widget/OppoRecipientEditTextView$5;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;

    .line 290
    new-instance v0, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;

    invoke-direct {v0, p0, v2}, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEditTextView$1;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 291
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 292
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 293
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 294
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->init()V

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/text/TextWatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoRecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/text/style/ImageSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoRecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->chipsPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoRecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitByCharacter()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->scrollBottomIntoView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoRecipientEditTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoRecipientEditTextView;->constructChipSpan(Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoRecipientEditTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->shrink()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mIndividualReplacements:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientAlternatesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oppo/widget/OppoRecipientEditTextView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oppo/widget/OppoRecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientEntry;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->createValidatedEntry(Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoRecipientEditTextView;)Lcom/oppo/widget/OppoRecipientChip;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoRecipientEditTextView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/oppo/widget/OppoRecipientEditTextView;->DISMISS:I

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientChip;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->unselectChip(Lcom/oppo/widget/OppoRecipientChip;)V

    return-void
.end method

.method private alreadyHasChip(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x1

    .line 1541
    iget-boolean v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    if-eqz v2, :cond_1

    .line 1548
    :cond_0
    :goto_0
    return v1

    .line 1544
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    const-class v3, Lcom/oppo/widget/OppoRecipientChip;

    invoke-interface {v2, p1, p2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/widget/OppoRecipientChip;

    .line 1545
    .local v0, chips:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_0

    .line 1546
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private calculateAvailableWidth(Z)F
    .locals 2
    .parameter "pressed"

    .prologue
    .line 770
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method private calculateOffsetFromBottom(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 760
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    sub-int v0, v1, v2

    .line 761
    .local v0, actualLine:I
    iget v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipHeight:F

    float-to-int v1, v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownVerticalOffset()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private changCommitChip(IILandroid/text/Editable;)Z
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "editable"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 1377
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1379
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    if-ne p2, v6, :cond_0

    .line 1382
    invoke-direct {p0, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->submitItemAtPosition(I)V

    .line 1383
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1425
    :goto_0
    return v4

    .line 1387
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1389
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 1391
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1392
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v2

    .line 1394
    .local v2, entry:Lcom/oppo/widget/OppoRecipientEntry;
    if-eqz v2, :cond_2

    .line 1395
    const-string v6, ""

    invoke-static {p3, p1, p2, v6}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1397
    invoke-direct {p0, v2, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->createChip(Lcom/oppo/widget/OppoRecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1399
    .local v1, chipText:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    if-le p1, v7, :cond_2

    if-le p2, v7, :cond_2

    .line 1403
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v7, :cond_1

    .line 1407
    :cond_1
    invoke-interface {p3, p1, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1415
    .end local v1           #chipText:Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    if-ne p2, v5, :cond_3

    .line 1416
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1419
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->sanitizeBetween()V

    goto :goto_0

    .end local v2           #entry:Lcom/oppo/widget/OppoRecipientEntry;
    :cond_4
    move v4, v5

    .line 1425
    goto :goto_0
.end method

.method private checkChipWidths()V
    .locals 8

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v3

    .line 991
    .local v3, chips:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v3, :cond_1

    .line 993
    move-object v0, v3

    .local v0, arr$:[Lcom/oppo/widget/OppoRecipientChip;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 994
    .local v2, chip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-virtual {v2}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 995
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 997
    invoke-virtual {v2}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/oppo/widget/OppoRecipientEditTextView;->replaceChip(Lcom/oppo/widget/OppoRecipientChip;Lcom/oppo/widget/OppoRecipientEntry;)V

    .line 993
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1001
    .end local v0           #arr$:[Lcom/oppo/widget/OppoRecipientChip;
    .end local v1           #bounds:Landroid/graphics/Rect;
    .end local v2           #chip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method

.method private chipsPending()Z
    .locals 1

    .prologue
    .line 2546
    iget v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearSelectedChip()V
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->unselectChip(Lcom/oppo/widget/OppoRecipientChip;)V

    .line 1648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    .line 1651
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 1652
    return-void
.end method

.method private commitByCharacter()V
    .locals 4

    .prologue
    .line 1362
    iget-object v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v3, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1366
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1367
    .local v1, end:I
    iget-object v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v3, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1368
    .local v2, start:I
    invoke-direct {p0, v2, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->shouldCreateChip(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1369
    invoke-direct {p0, v2, v1, v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 1371
    :cond_2
    iget-boolean v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    if-nez v3, :cond_0

    .line 1372
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method private commitChip(IILandroid/text/Editable;)Z
    .locals 16
    .parameter "start"
    .parameter "end"
    .parameter "editable"

    .prologue
    .line 1429
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 1430
    .local v3, adapter:Landroid/widget/ListAdapter;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v14

    if-lez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 1433
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->submitItemAtPosition(I)V

    .line 1434
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1435
    const/4 v14, 0x1

    .line 1500
    :goto_0
    return v14

    .line 1437
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v14, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 1438
    .local v13, tokenEnd:I
    invoke-interface/range {p3 .. p3}, Landroid/text/Editable;->length()I

    move-result v14

    add-int/lit8 v15, v13, 0x1

    if-le v14, v15, :cond_2

    .line 1439
    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 1440
    .local v4, charAt:C
    const/16 v14, 0x2c

    if-eq v4, v14, :cond_1

    const/16 v14, 0x3b

    if-eq v4, v14, :cond_1

    const v14, 0xff0c

    if-ne v4, v14, :cond_2

    .line 1442
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 1445
    .end local v4           #charAt:C
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 1446
    .local v12, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    if-eqz v14, :cond_7

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_7

    .line 1447
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients(I)[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v10

    .line 1448
    .local v10, recips:[Lcom/oppo/widget/OppoRecipientChip;
    const-string v11, ""

    .line 1450
    .local v11, temp:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 1451
    array-length v8, v10

    .line 1452
    .local v8, length:I
    const/4 v5, 0x0

    .line 1454
    .local v5, chipEnd:I
    if-nez v8, :cond_6

    .line 1455
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move/from16 v0, p2

    invoke-virtual {v14, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 1456
    const/4 v5, 0x0

    .line 1462
    :cond_3
    :goto_1
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 1464
    .restart local v4       #charAt:C
    const/16 v14, 0x20

    if-ne v4, v14, :cond_4

    .line 1465
    add-int/lit8 v5, v5, 0x1

    .line 1468
    :cond_4
    move/from16 p1, v5

    .line 1471
    .end local v4           #charAt:C
    .end local v5           #chipEnd:I
    .end local v8           #length:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 1473
    .local v9, m:Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1474
    const-string v12, ","

    goto :goto_2

    .line 1457
    .end local v9           #m:Ljava/util/regex/Matcher;
    .restart local v5       #chipEnd:I
    .restart local v8       #length:I
    :cond_6
    if-lez v8, :cond_3

    .line 1458
    add-int/lit8 v14, v8, -0x1

    aget-object v14, v10, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v5

    .line 1459
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 1478
    .end local v5           #chipEnd:I
    .end local v8           #length:I
    .end local v10           #recips:[Lcom/oppo/widget/OppoRecipientChip;
    .end local v11           #temp:Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 1480
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_a

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1481
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/oppo/widget/OppoRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v7

    .line 1482
    .local v7, entry:Lcom/oppo/widget/OppoRecipientEntry;
    if-eqz v7, :cond_8

    .line 1483
    const-string v14, ""

    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2, v14}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1484
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->createChip(Lcom/oppo/widget/OppoRecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1485
    .local v6, chipText:Ljava/lang/CharSequence;
    if-eqz v6, :cond_8

    const/4 v14, -0x1

    move/from16 v0, p1

    if-le v0, v14, :cond_8

    const/4 v14, -0x1

    move/from16 v0, p2

    if-le v0, v14, :cond_8

    .line 1486
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1493
    .end local v6           #chipText:Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v14

    move/from16 v0, p2

    if-ne v0, v14, :cond_9

    .line 1494
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1496
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->sanitizeBetween()V

    .line 1497
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1500
    .end local v7           #entry:Lcom/oppo/widget/OppoRecipientEntry;
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private commitDefault()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1340
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-nez v5, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return v4

    .line 1343
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1344
    .local v0, editable:Landroid/text/Editable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1345
    .local v1, end:I
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, v0, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1347
    .local v2, start:I
    invoke-direct {p0, v2, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->shouldCreateChip(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1348
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1351
    .local v3, whatEnd:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1352
    invoke-direct {p0, v2, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->handleEdit(II)V

    .line 1353
    const/4 v4, 0x1

    goto :goto_0

    .line 1355
    :cond_2
    invoke-direct {p0, v2, v1, v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    move-result v4

    goto :goto_0
.end method

.method private constructChipSpan(Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;
    .locals 10
    .parameter "contact"
    .parameter "offset"
    .parameter "pressed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 726
    iget-object v7, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 727
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Unable to render any chips as setChipDimensions was not called."

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 730
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 732
    .local v3, layout:Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 733
    .local v4, paint:Landroid/text/TextPaint;
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    .line 734
    .local v2, defaultSize:F
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 737
    .local v1, defaultColor:I
    if-eqz p3, :cond_1

    .line 738
    invoke-direct {p0, p1, v4, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->createSelectedChip(Lcom/oppo/widget/OppoRecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 745
    .local v6, tmpBitmap:Landroid/graphics/Bitmap;
    :goto_0
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 746
    .local v5, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v5, v9, v9, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 747
    new-instance v0, Lcom/oppo/widget/OppoRecipientChip;

    invoke-direct {v0, v5, p1, p2}, Lcom/oppo/widget/OppoRecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/oppo/widget/OppoRecipientEntry;I)V

    .line 749
    .local v0, OppoRecipientChip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 750
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    return-object v0

    .line 741
    .end local v0           #OppoRecipientChip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v5           #result:Landroid/graphics/drawable/Drawable;
    .end local v6           #tmpBitmap:Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, p1, v4, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->createUnselectedChip(Lcom/oppo/widget/OppoRecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6       #tmpBitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private createChip(Lcom/oppo/widget/OppoRecipientEntry;Z)Ljava/lang/CharSequence;
    .locals 10
    .parameter "entry"
    .parameter "pressed"

    .prologue
    const/4 v7, 0x0

    .line 1902
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->createAddressText(Lcom/oppo/widget/OppoRecipientEntry;)Ljava/lang/String;

    move-result-object v2

    .line 1903
    .local v2, displayText:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v1, v7

    .line 1922
    :cond_0
    :goto_0
    return-object v1

    .line 1906
    :cond_1
    const/4 v1, 0x0

    .line 1908
    .local v1, chipText:Landroid/text/SpannableString;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 1909
    .local v4, end:I
    iget-object v8, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 1910
    .local v5, start:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 1911
    .local v6, textLength:I
    new-instance v1, Landroid/text/SpannableString;

    .end local v1           #chipText:Landroid/text/SpannableString;
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1912
    .restart local v1       #chipText:Landroid/text/SpannableString;
    iget-boolean v8, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    if-nez v8, :cond_0

    .line 1914
    :try_start_0
    invoke-direct {p0, p1, v5, p2}, Lcom/oppo/widget/OppoRecipientEditTextView;->constructChipSpan(Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v0

    .line 1915
    .local v0, chip:Lcom/oppo/widget/OppoRecipientChip;
    const/4 v8, 0x0

    const/16 v9, 0x21

    invoke-virtual {v1, v0, v8, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1916
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/oppo/widget/OppoRecipientChip;->setOriginalText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1917
    .end local v0           #chip:Lcom/oppo/widget/OppoRecipientChip;
    :catch_0
    move-exception v3

    .line 1918
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v8, "OppoRecipientEditTextView"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v7

    .line 1919
    goto :goto_0
.end method

.method private createMoreSpan(I)Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;
    .locals 13
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 2148
    iget-object v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2149
    .local v1, moreText:Ljava/lang/String;
    new-instance v6, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 2150
    .local v6, morePaint:Landroid/text/TextPaint;
    iget-object v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2151
    iget-object v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2152
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int v12, v3, v4

    .line 2154
    .local v12, width:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v9

    .line 2155
    .local v9, height:I
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v9, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2156
    .local v8, drawable:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2157
    .local v0, canvas:Landroid/graphics/Canvas;
    move v7, v9

    .line 2158
    .local v7, adjustedHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v10

    .line 2159
    .local v10, layout:Landroid/text/Layout;
    if-eqz v10, :cond_0

    .line 2160
    invoke-virtual {v10, v2}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int/2addr v7, v3

    .line 2162
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 2164
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v11, v3, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2165
    .local v11, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v2, v2, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2166
    new-instance v2, Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;

    invoke-direct {v2, p0, v11}, Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method private createReplacementChip(IILandroid/text/Editable;)V
    .locals 12
    .parameter "tokenStart"
    .parameter "tokenEnd"
    .parameter "editable"

    .prologue
    const/4 v7, 0x0

    .line 1107
    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoRecipientEditTextView;->alreadyHasChip(II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1113
    .local v9, token:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1114
    .local v2, commitCharIndex:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v2, v10, :cond_2

    .line 1115
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1117
    :cond_2
    invoke-direct {p0, v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v6

    .line 1118
    .local v6, entry:Lcom/oppo/widget/OppoRecipientEntry;
    if-eqz v6, :cond_0

    .line 1119
    invoke-virtual {p0, v6}, Lcom/oppo/widget/OppoRecipientEditTextView;->createAddressText(Lcom/oppo/widget/OppoRecipientEntry;)Ljava/lang/String;

    move-result-object v3

    .line 1121
    .local v3, destText:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    .line 1122
    .local v8, textLength:I
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1123
    .local v1, chipText:Landroid/text/SpannableString;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 1124
    .local v5, end:I
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 1125
    .local v7, start:I
    :cond_3
    const/4 v0, 0x0

    .line 1127
    .local v0, chip:Lcom/oppo/widget/OppoRecipientChip;
    :try_start_0
    iget-boolean v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    if-nez v10, :cond_4

    .line 1128
    const/4 v10, 0x0

    invoke-direct {p0, v6, v7, v10}, Lcom/oppo/widget/OppoRecipientEditTextView;->constructChipSpan(Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v0

    .line 1129
    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v1, v0, v10, v8, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :cond_4
    :goto_1
    invoke-interface {p3, p1, p2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1136
    if-eqz v0, :cond_0

    .line 1137
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-nez v10, :cond_5

    .line 1138
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1140
    :cond_5
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/oppo/widget/OppoRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 1141
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1131
    :catch_0
    move-exception v4

    .line 1132
    .local v4, e:Ljava/lang/NullPointerException;
    const-string v10, "OppoRecipientEditTextView"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private createSelectedChip(Lcom/oppo/widget/OppoRecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "contact"
    .parameter "paint"
    .parameter "layout"

    .prologue
    .line 589
    iget v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipHeight:F

    float-to-int v9, v2

    .line 590
    .local v9, height:I
    move v8, v9

    .line 591
    .local v8, deleteWidth:I
    const/4 v2, 0x1

    new-array v12, v2, [F

    .line 592
    .local v12, widths:[F
    const-string v2, " "

    invoke-virtual {p2, v2, v12}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 593
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->createChipDisplayText(Lcom/oppo/widget/OppoRecipientEntry;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v3

    int-to-float v4, v8

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    aget v4, v12, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, p2, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v1

    .line 598
    .local v1, ellipsizedText:Ljava/lang/CharSequence;
    mul-int/lit8 v2, v8, 0x2

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p2, v1, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 603
    .local v11, width:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 604
    .local v10, tmpBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 605
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 607
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 608
    sget v2, Lcom/oppo/widget/OppoRecipientEditTextView;->sSelectedTextColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipPadding:I

    int-to-float v4, v4

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, p2, v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v5

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 613
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 614
    .local v7, backgroundPadding:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 615
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    sub-int v3, v11, v8

    iget v4, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x0

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int v5, v11, v5

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v9, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 618
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 622
    .end local v7           #backgroundPadding:Landroid/graphics/Rect;
    :goto_0
    return-object v10

    .line 620
    :cond_0
    const-string v2, "OppoRecipientEditTextView"

    const-string v3, "Unable to draw a background for the chips as it was never set"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createSingleAddressAdapter(Lcom/oppo/widget/OppoRecipientChip;)Landroid/widget/ListAdapter;
    .locals 4
    .parameter "currentChip"

    .prologue
    .line 1781
    new-instance v0, Lcom/oppo/widget/OppoSingleRecipientArrayAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAddressLayout:I

    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/widget/OppoSingleRecipientArrayAdapter;-><init>(Landroid/content/Context;ILcom/oppo/widget/OppoRecipientEntry;)V

    return-object v0
.end method

.method private createTokenizedEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;
    .locals 6
    .parameter "token"

    .prologue
    const/4 v5, 0x0

    .line 1159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1160
    const/4 v4, 0x0

    .line 1233
    :goto_0
    return-object v4

    .line 1162
    :cond_0
    invoke-static {p1}, Lcom/oppo/widget/OppoTokenizer;->tokenize(Ljava/lang/CharSequence;)[Lcom/oppo/widget/OppoToken;

    move-result-object v2

    .line 1163
    .local v2, tokens:[Lcom/oppo/widget/OppoToken;
    const/4 v0, 0x0

    .line 1197
    .local v0, display:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    .line 1200
    aget-object v4, v2, v5

    invoke-virtual {v4}, Lcom/oppo/widget/OppoToken;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1202
    invoke-static {v0, p1}, Lcom/oppo/widget/OppoRecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v4

    goto :goto_0

    .line 1204
    :cond_1
    aget-object v4, v2, v5

    invoke-virtual {v4}, Lcom/oppo/widget/OppoToken;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1206
    invoke-static {v0}, Lcom/oppo/widget/OppoRecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v4

    goto :goto_0

    .line 1212
    :cond_2
    const/4 v3, 0x0

    .line 1213
    .local v3, validatedToken:Ljava/lang/String;
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v4, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1215
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v4, p1}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1216
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1217
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1220
    invoke-static {v3}, Lcom/oppo/widget/OppoTokenizer;->tokenize(Ljava/lang/CharSequence;)[Lcom/oppo/widget/OppoToken;

    move-result-object v1

    .line 1221
    .local v1, tokenized:[Lcom/oppo/widget/OppoToken;
    array-length v4, v1

    if-lez v4, :cond_3

    .line 1222
    aget-object v4, v1, v5

    invoke-virtual {v4}, Lcom/oppo/widget/OppoToken;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1233
    .end local v1           #tokenized:[Lcom/oppo/widget/OppoToken;
    :cond_3
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .end local v3           #validatedToken:Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Lcom/oppo/widget/OppoRecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v4

    goto :goto_0

    .line 1228
    .restart local v3       #validatedToken:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    move-object v3, p1

    .line 1233
    goto :goto_2
.end method

.method private createUnselectedChip(Lcom/oppo/widget/OppoRecipientEntry;Landroid/text/TextPaint;Landroid/text/Layout;)Landroid/graphics/Bitmap;
    .locals 21
    .parameter "contact"
    .parameter "paint"
    .parameter "layout"

    .prologue
    .line 629
    move-object/from16 v0, p0

    iget v4, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipHeight:F

    float-to-int v12, v4

    .line 630
    .local v12, height:I
    move v13, v12

    .line 631
    .local v13, iconWidth:I
    const/4 v4, 0x1

    new-array v0, v4, [F

    move-object/from16 v20, v0

    .line 632
    .local v20, widths:[F
    const-string v4, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 633
    invoke-virtual/range {p0 .. p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->createChipDisplayText(Lcom/oppo/widget/OppoRecipientEntry;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->calculateAvailableWidth(Z)F

    move-result v5

    int-to-float v6, v13

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    aget v6, v20, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;

    move-result-object v3

    .line 637
    .local v3, ellipsizedText:Ljava/lang/CharSequence;
    mul-int/lit8 v4, v13, 0x2

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 640
    .local v19, width:I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    invoke-static {v0, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 643
    .local v18, tmpBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipBackground(Lcom/oppo/widget/OppoRecipientEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 644
    .local v9, background:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_5

    .line 645
    const/4 v2, 0x0

    .line 648
    .local v2, canvas:Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoRecipientEntry;->getContactId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mShowPhoto:Z

    if-eqz v4, :cond_4

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoRecipientEntry;->getPhotoBytes()[B

    move-result-object v16

    .line 652
    .local v16, photoBytes:[B
    if-nez v16, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoRecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoRecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/oppo/widget/OppoRecipientEditTextView;->setPhotoByteToEntry(Lcom/oppo/widget/OppoRecipientEntry;Landroid/net/Uri;)V

    .line 657
    invoke-virtual/range {p1 .. p1}, Lcom/oppo/widget/OppoRecipientEntry;->getPhotoBytes()[B

    move-result-object v16

    .line 661
    :cond_0
    if-eqz v16, :cond_3

    .line 662
    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 668
    .local v15, photo:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v15, :cond_1

    .line 669
    mul-int/lit8 v4, v13, 0x2

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 673
    new-instance v17, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 674
    .local v17, src:Landroid/graphics/RectF;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 675
    .local v10, backgroundPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 676
    new-instance v11, Landroid/graphics/RectF;

    sub-int v4, v19, v13

    iget v5, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v10, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v5, 0x0

    int-to-float v5, v5

    iget v6, v10, Landroid/graphics/Rect;->right:I

    sub-int v6, v19, v6

    int-to-float v6, v6

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v12, v7

    int-to-float v7, v7

    invoke-direct {v11, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 679
    .local v11, dst:Landroid/graphics/RectF;
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 680
    .local v14, matrix:Landroid/graphics/Matrix;
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v11, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 681
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    invoke-static {v0, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 682
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 683
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p2

    invoke-virtual {v2, v15, v14, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 690
    .end local v10           #backgroundPadding:Landroid/graphics/Rect;
    .end local v11           #dst:Landroid/graphics/RectF;
    .end local v14           #matrix:Landroid/graphics/Matrix;
    .end local v15           #photo:Landroid/graphics/Bitmap;
    .end local v16           #photoBytes:[B
    .end local v17           #src:Landroid/graphics/RectF;
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 691
    new-instance v2, Landroid/graphics/Canvas;

    .end local v2           #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 694
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v4, v5, v0, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 695
    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 697
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xc060407

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 700
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipPadding:I

    int-to-float v6, v6

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1, v12}, Lcom/oppo/widget/OppoRecipientEditTextView;->getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F

    move-result v7

    move-object/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 705
    .end local v2           #canvas:Landroid/graphics/Canvas;
    :goto_2
    return-object v18

    .line 665
    .restart local v2       #canvas:Landroid/graphics/Canvas;
    .restart local v16       #photoBytes:[B
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .restart local v15       #photo:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 687
    .end local v15           #photo:Landroid/graphics/Bitmap;
    .end local v16           #photoBytes:[B
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 703
    .end local v2           #canvas:Landroid/graphics/Canvas;
    :cond_5
    const-string v4, "OppoRecipientEditTextView"

    const-string v5, "Unable to draw a background for the chips as it was never set"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private createValidatedEntry(Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientEntry;
    .locals 4
    .parameter "item"

    .prologue
    .line 2025
    if-nez p1, :cond_0

    .line 2026
    const/4 v1, 0x0

    .line 2041
    :goto_0
    return-object v1

    .line 2032
    :cond_0
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 2033
    .local v0, destination:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientEntry;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oppo/widget/OppoRecipientEntry;->isCreatedRecipient(J)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v2, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2037
    :cond_1
    invoke-static {v0}, Lcom/oppo/widget/OppoRecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v1

    .local v1, entry:Lcom/oppo/widget/OppoRecipientEntry;
    goto :goto_0

    .line 2039
    .end local v1           #entry:Lcom/oppo/widget/OppoRecipientEntry;
    :cond_2
    move-object v1, p1

    .restart local v1       #entry:Lcom/oppo/widget/OppoRecipientEntry;
    goto :goto_0
.end method

.method private ellipsizeText(Ljava/lang/CharSequence;Landroid/text/TextPaint;F)Ljava/lang/CharSequence;
    .locals 3
    .parameter "text"
    .parameter "paint"
    .parameter "maxWidth"

    .prologue
    .line 578
    iget v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipFontSize:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 579
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    const-string v0, "OppoRecipientEditTextView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "OppoRecipientEditTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max width is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1, p2, p3, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private expand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->removeMoreChip()V

    .line 566
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 567
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 568
    .local v0, text:Landroid/text/Editable;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 571
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 572
    new-instance v1, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;

    invoke-direct {v1, p0, v3}, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEditTextView$1;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 573
    iput-object v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 575
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 568
    goto :goto_0
.end method

.method private findChip(I)Lcom/oppo/widget/OppoRecipientChip;
    .locals 9
    .parameter "offset"

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    const-class v8, Lcom/oppo/widget/OppoRecipientChip;

    invoke-interface {v5, v6, v7, v8}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/widget/OppoRecipientChip;

    .line 1835
    .local v1, chips:[Lcom/oppo/widget/OppoRecipientChip;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 1836
    aget-object v0, v1, v3

    .line 1837
    .local v0, chip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v4

    .line 1838
    .local v4, start:I
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v2

    .line 1839
    .local v2, end:I
    if-lt p1, v4, :cond_0

    if-gt p1, v2, :cond_0

    .line 1843
    .end local v0           #chip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v2           #end:I
    .end local v4           #start:I
    :goto_1
    return-object v0

    .line 1835
    .restart local v0       #chip:Lcom/oppo/widget/OppoRecipientChip;
    .restart local v2       #end:I
    .restart local v4       #start:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1843
    .end local v0           #chip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v2           #end:I
    .end local v4           #start:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findText(Landroid/text/Editable;I)I
    .locals 2
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 1825
    invoke-interface {p1, p2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 1828
    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    const/4 p2, -0x1

    goto :goto_0
.end method

.method private focusNext()Z
    .locals 2

    .prologue
    .line 1323
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1324
    .local v0, next:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1325
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1326
    const/4 v1, 0x1

    .line 1328
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I
    .locals 1
    .parameter "chip"

    .prologue
    .line 1603
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I
    .locals 1
    .parameter "chip"

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getTextYOffset(Ljava/lang/String;Landroid/text/TextPaint;I)F
    .locals 4
    .parameter "text"
    .parameter "paint"
    .parameter "height"

    .prologue
    .line 718
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 719
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 720
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 721
    .local v1, textHeight:I
    sub-int v2, p3, v1

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p3, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    return v2
.end method

.method private handleEdit(II)V
    .locals 7
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v6, -0x1

    .line 1552
    if-eq p1, v6, :cond_0

    if-ne p2, v6, :cond_1

    .line 1554
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1572
    :goto_0
    return-void

    .line 1559
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1560
    .local v1, editable:Landroid/text/Editable;
    invoke-virtual {p0, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1561
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1562
    .local v4, text:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1563
    invoke-static {v4}, Lcom/oppo/widget/OppoRecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v2

    .line 1564
    .local v2, entry:Lcom/oppo/widget/OppoRecipientEntry;
    const-string v5, ""

    invoke-static {v1, p1, p2, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1565
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->createChip(Lcom/oppo/widget/OppoRecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1566
    .local v0, chipText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1567
    .local v3, selEnd:I
    if-eqz v0, :cond_2

    if-le p1, v6, :cond_2

    if-le v3, v6, :cond_2

    .line 1568
    invoke-interface {v1, p1, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1571
    .end local v0           #chipText:Ljava/lang/CharSequence;
    .end local v2           #entry:Lcom/oppo/widget/OppoRecipientEntry;
    .end local v3           #selEnd:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method

.method private handlePasteAndReplace()V
    .locals 4

    .prologue
    .line 2698
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->handlePaste()Ljava/util/ArrayList;

    move-result-object v0

    .line 2699
    .local v0, created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoRecipientChip;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2701
    new-instance v1, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEditTextView$1;)V

    .line 2702
    .local v1, replace:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2704
    .end local v1           #replace:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;
    :cond_0
    return-void
.end method

.method private handlePasteClip(Landroid/content/ClipData;)V
    .locals 7
    .parameter "clip"

    .prologue
    .line 2664
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2666
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    const-string v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2667
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 2668
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2669
    .local v3, paste:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 2670
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2671
    .local v4, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 2672
    .local v1, end:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2673
    .local v0, editable:Landroid/text/Editable;
    if-ltz v4, :cond_1

    if-ltz v1, :cond_1

    if-eq v4, v1, :cond_1

    .line 2674
    invoke-interface {v0, v3, v4, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2678
    :goto_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->handlePasteAndReplace()V

    .line 2667
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2676
    .restart local v0       #editable:Landroid/text/Editable;
    .restart local v1       #end:I
    .restart local v4       #start:I
    :cond_1
    invoke-interface {v0, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 2683
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v3           #paste:Ljava/lang/CharSequence;
    .end local v4           #start:I
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2684
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const v3, 0xc090404

    .line 825
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 826
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0xc080403

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 827
    .local v0, def:Landroid/graphics/Bitmap;
    const v2, 0xc080404

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 828
    const v2, 0xc080405

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 829
    const v2, 0xc080406

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 830
    const v2, 0xc05042f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipPadding:I

    .line 831
    iput v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesLayout:I

    .line 832
    iput v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAddressLayout:I

    .line 833
    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 834
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0xc090405

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 836
    const v2, 0xc050400

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipHeight:F

    .line 837
    const v2, 0xc050401

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipFontSize:F

    .line 838
    const v2, 0xc080407

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 839
    const v2, 0xc090406

    iput v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCopyViewRes:I

    .line 840
    new-instance v2, Lcom/oppo/widget/OppoTokenizer;

    invoke-direct {v2}, Lcom/oppo/widget/OppoTokenizer;-><init>()V

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoRecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 842
    const-string v2, "(,|\uff0c)(,|\uff0c)"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->COMMA_PATTERN:Ljava/util/regex/Pattern;

    .line 847
    const v2, 0xc080481

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundResource(I)V

    .line 849
    return-void
.end method

.method private isInDelete(Lcom/oppo/widget/OppoRecipientChip;IFF)Z
    .locals 1
    .parameter "chip"
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2462
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 1150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1151
    const/4 v1, 0x0

    .line 1155
    :goto_0
    return v1

    .line 1154
    :cond_0
    sget-object v1, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1155
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private postHandlePendingChips()V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 985
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandlePendingChips:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 986
    return-void
.end method

.method private putOffsetInRange(I)I
    .locals 9
    .parameter "o"

    .prologue
    .line 1798
    move v3, p1

    .line 1799
    .local v3, offset:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 1800
    .local v6, text:Landroid/text/Editable;
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1802
    .local v2, length:I
    move v5, v2

    .line 1803
    .local v5, realLength:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1804
    invoke-interface {v6, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    .line 1805
    add-int/lit8 v5, v5, -0x1

    .line 1803
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1813
    :cond_0
    if-lt v3, v5, :cond_1

    move v4, v3

    .line 1821
    .end local v3           #offset:I
    .local v4, offset:I
    :goto_1
    return v4

    .line 1816
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1817
    .local v0, editable:Landroid/text/Editable;
    :goto_2
    if-ltz v3, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->findText(Landroid/text/Editable;I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->findChip(I)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1819
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    move v4, v3

    .line 1821
    .end local v3           #offset:I
    .restart local v4       #offset:I
    goto :goto_1
.end method

.method private scrollBottomIntoView()V
    .locals 4

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipHeight:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 2658
    :cond_0
    return-void
.end method

.method private scrollLineIntoView(I)V
    .locals 3
    .parameter "line"

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollBy(II)V

    .line 1727
    :cond_0
    return-void
.end method

.method private selectChip(Lcom/oppo/widget/OppoRecipientChip;)Lcom/oppo/widget/OppoRecipientChip;
    .locals 10
    .parameter "currentChip"

    .prologue
    .line 2319
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->getContactId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 2320
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->getValue()Ljava/lang/CharSequence;

    move-result-object v5

    .line 2321
    .local v5, text:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2322
    .local v1, editable:Landroid/text/Editable;
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->removeChip(Lcom/oppo/widget/OppoRecipientChip;)V

    .line 2323
    invoke-interface {v1, v5}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 2324
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2325
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 2326
    new-instance v3, Lcom/oppo/widget/OppoRecipientChip;

    const/4 v6, 0x0

    check-cast v5, Ljava/lang/String;

    .end local v5           #text:Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/oppo/widget/OppoRecipientEntry;->constructFakeEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v7

    const/4 v8, -0x1

    invoke-direct {v3, v6, v7, v8}, Lcom/oppo/widget/OppoRecipientChip;-><init>(Landroid/graphics/drawable/Drawable;Lcom/oppo/widget/OppoRecipientEntry;I)V

    .line 2384
    .end local v1           #editable:Landroid/text/Editable;
    :cond_0
    :goto_0
    return-object v3

    .line 2328
    :cond_1
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->getContactId()J

    move-result-wide v6

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 2329
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v4

    .line 2330
    .local v4, start:I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v2

    .line 2331
    .local v2, end:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2334
    :try_start_0
    iget-boolean v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    if-eqz v6, :cond_2

    .line 2335
    const/4 v3, 0x0

    goto :goto_0

    .line 2337
    :cond_2
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v4, v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->constructChipSpan(Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2342
    .local v3, newChip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2343
    .restart local v1       #editable:Landroid/text/Editable;
    const-string v6, ""

    invoke-static {v1, v4, v2, v6}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2344
    const/4 v6, -0x1

    if-eq v4, v6, :cond_3

    const/4 v6, -0x1

    if-ne v2, v6, :cond_5

    .line 2345
    :cond_3
    const-string v6, "OppoRecipientEditTextView"

    const-string v7, "The chip being selected no longer exists but should."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    :goto_1
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/oppo/widget/OppoRecipientChip;->setSelected(Z)V

    .line 2350
    invoke-virtual {v3}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/widget/OppoRecipientEntry;->getContactId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 2351
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoRecipientEditTextView;->scrollLineIntoView(I)V

    .line 2353
    :cond_4
    iget-object v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAddressPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/oppo/widget/OppoRecipientEditTextView;->showAddress(Lcom/oppo/widget/OppoRecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V

    .line 2354
    iget-boolean v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    if-nez v6, :cond_0

    .line 2355
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_0

    .line 2338
    .end local v1           #editable:Landroid/text/Editable;
    .end local v3           #newChip:Lcom/oppo/widget/OppoRecipientChip;
    :catch_0
    move-exception v0

    .line 2339
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v6, "OppoRecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2340
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2347
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #editable:Landroid/text/Editable;
    .restart local v3       #newChip:Lcom/oppo/widget/OppoRecipientChip;
    :cond_5
    const/16 v6, 0x21

    invoke-interface {v1, v3, v4, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2359
    .end local v1           #editable:Landroid/text/Editable;
    .end local v2           #end:I
    .end local v3           #newChip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v4           #start:I
    :cond_6
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v4

    .line 2360
    .restart local v4       #start:I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v2

    .line 2361
    .restart local v2       #end:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2364
    :try_start_1
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v4, v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->constructChipSpan(Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 2369
    .restart local v3       #newChip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2370
    .restart local v1       #editable:Landroid/text/Editable;
    const-string v6, ""

    invoke-static {v1, v4, v2, v6}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2371
    const/4 v6, -0x1

    if-eq v4, v6, :cond_7

    const/4 v6, -0x1

    if-ne v2, v6, :cond_9

    .line 2372
    :cond_7
    const-string v6, "OppoRecipientEditTextView"

    const-string v7, "The chip being selected no longer exists but should."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :goto_2
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/oppo/widget/OppoRecipientChip;->setSelected(Z)V

    .line 2377
    invoke-virtual {v3}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oppo/widget/OppoRecipientEntry;->getContactId()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    .line 2378
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoRecipientEditTextView;->scrollLineIntoView(I)V

    .line 2380
    :cond_8
    iget-object v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/oppo/widget/OppoRecipientEditTextView;->showAlternates(Lcom/oppo/widget/OppoRecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V

    .line 2381
    iget-boolean v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    if-nez v6, :cond_0

    .line 2382
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_0

    .line 2365
    .end local v1           #editable:Landroid/text/Editable;
    .end local v3           #newChip:Lcom/oppo/widget/OppoRecipientChip;
    :catch_1
    move-exception v0

    .line 2366
    .restart local v0       #e:Ljava/lang/NullPointerException;
    const-string v6, "OppoRecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2367
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2374
    .end local v0           #e:Ljava/lang/NullPointerException;
    .restart local v1       #editable:Landroid/text/Editable;
    .restart local v3       #newChip:Lcom/oppo/widget/OppoRecipientChip;
    :cond_9
    const/16 v6, 0x21

    invoke-interface {v1, v3, v4, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2
.end method

.method private shouldCreateChip(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1537
    iget-boolean v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/oppo/widget/OppoRecipientEditTextView;->alreadyHasChip(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAddress(Lcom/oppo/widget/OppoRecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
    .locals 6
    .parameter "currentChip"
    .parameter "popup"
    .parameter "width"
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 2390
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 2391
    .local v1, line:I
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->calculateOffsetFromBottom(I)I

    move-result v0

    .line 2394
    .local v0, bottom:I
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 2395
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 2396
    invoke-virtual {p2, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 2397
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->createSingleAddressAdapter(Lcom/oppo/widget/OppoRecipientChip;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2398
    new-instance v3, Lcom/oppo/widget/OppoRecipientEditTextView$8;

    invoke-direct {v3, p0, p1, p2}, Lcom/oppo/widget/OppoRecipientEditTextView$8;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientChip;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {p2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2406
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 2407
    const-string v3, "TAG"

    const-string v4, "showAddress--"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 2409
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 2410
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 2411
    return-void
.end method

.method private showAlternates(Lcom/oppo/widget/OppoRecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
    .locals 9
    .parameter "currentChip"
    .parameter "alternatesPopup"
    .parameter "width"
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 1731
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 1733
    .local v2, line:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_1

    .line 1734
    const/4 v0, 0x0

    .line 1741
    .local v0, bottom:I
    :goto_0
    invoke-virtual {p2, p3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1742
    invoke-virtual {p2, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1743
    invoke-virtual {p2, v0}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 1745
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    if-nez v4, :cond_2

    .line 1771
    :cond_0
    :goto_1
    return-void

    .line 1736
    .end local v0           #bottom:I
    :cond_1
    iget v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipHeight:F

    const/high16 v5, 0x4000

    iget v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mLineSpacingExtra:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v0, v4

    .restart local v0       #bottom:I
    goto :goto_0

    .line 1749
    :cond_2
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->getContactId()J

    move-result-wide v5

    invoke-virtual {v4, p4, v5, v6}, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->getAlternatesCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v1

    .line 1751
    .local v1, c:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    invoke-virtual {v4, p1}, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->setCurrentChip(Lcom/oppo/widget/OppoRecipientChip;)V

    .line 1752
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1753
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    invoke-virtual {p2, v4}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1757
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, v4}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1759
    iput v7, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCheckedItem:I

    .line 1760
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->show()V

    .line 1761
    invoke-virtual {p2}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1762
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v8}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1767
    iget v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCheckedItem:I

    if-eq v4, v7, :cond_0

    .line 1768
    iget v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCheckedItem:I

    invoke-virtual {v3, v4, v8}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1769
    iput v7, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCheckedItem:I

    goto :goto_1
.end method

.method private shrink()V
    .locals 21

    .prologue
    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 562
    :goto_0
    return-void

    .line 448
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/oppo/widget/OppoRecipientEntry;->getContactId()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_1

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    .line 561
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->createMoreChip()V

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    if-gtz v17, :cond_2

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mDelayedShrink:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 464
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    move/from16 v17, v0

    if-lez v17, :cond_4

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->postHandlePendingChips()V

    .line 559
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 467
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 469
    .local v3, editable:Landroid/text/Editable;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v17

    if-lez v17, :cond_5

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 473
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 474
    .local v4, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v11

    .line 475
    .local v11, start:I
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v17

    const-class v18, Lcom/oppo/widget/OppoRecipientChip;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v11, v4, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/oppo/widget/OppoRecipientChip;

    .line 477
    .local v2, chips:[Lcom/oppo/widget/OppoRecipientChip;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 478
    if-eqz v2, :cond_6

    array-length v0, v2

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 479
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 480
    .local v15, text:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15, v11}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v16

    .line 482
    .local v16, whatEnd:I
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    invoke-interface/range {v15 .. v16}, Landroid/text/Editable;->charAt(I)C

    move-result v17

    const/16 v18, 0x2c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 483
    add-int/lit8 v16, v16, 0x1

    .line 487
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    .line 488
    .local v9, selEnd:I
    move/from16 v0, v16

    if-eq v0, v9, :cond_8

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 489
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->handleEdit(II)V

    goto/16 :goto_2

    .line 491
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    goto/16 :goto_2

    .line 496
    .end local v9           #selEnd:I
    .end local v15           #text:Landroid/text/Editable;
    .end local v16           #whatEnd:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 497
    .restart local v15       #text:Landroid/text/Editable;
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v8

    .line 499
    .local v8, recips:[Lcom/oppo/widget/OppoRecipientChip;
    const/4 v12, -0x1

    .line 500
    .local v12, start1:I
    const/4 v5, -0x1

    .line 502
    .local v5, end1:I
    const/4 v13, -0x1

    .line 503
    .local v13, start2:I
    const/4 v6, -0x1

    .line 505
    .local v6, end2:I
    array-length v10, v8

    .line 506
    .local v10, size:I
    add-int/lit8 v7, v10, -0x1

    .line 508
    .local v7, index:I
    :goto_3
    if-ltz v7, :cond_f

    .line 509
    add-int/lit8 v17, v7, -0x1

    if-ltz v17, :cond_c

    .line 510
    add-int/lit8 v17, v7, -0x1

    aget-object v17, v8, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v13

    .line 511
    add-int/lit8 v17, v7, -0x1

    aget-object v17, v8, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v6

    .line 517
    :goto_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_a

    .line 518
    aget-object v17, v8, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v12

    .line 519
    aget-object v17, v8, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v5

    .line 522
    :cond_a
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_b

    .line 523
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 526
    .local v14, str:Ljava/lang/String;
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_b

    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 527
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->handleEdit(II)V

    .line 531
    .end local v14           #str:Ljava/lang/String;
    :cond_b
    if-lez v12, :cond_d

    if-nez v7, :cond_d

    .line 532
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v12, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->changCommitChip(IILandroid/text/Editable;)Z

    .line 533
    add-int/lit8 v7, v7, -0x1

    .line 535
    goto/16 :goto_3

    .line 513
    :cond_c
    const/4 v13, -0x1

    .line 514
    const/4 v6, -0x1

    goto :goto_4

    .line 538
    :cond_d
    const/16 v17, -0x1

    move/from16 v0, v17

    if-le v13, v0, :cond_e

    .line 539
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v12, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->changCommitChip(IILandroid/text/Editable;)Z

    .line 540
    move v12, v13

    .line 541
    move v5, v6

    .line 542
    const/4 v13, -0x1

    .line 543
    const/4 v6, -0x1

    .line 544
    add-int/lit8 v7, v7, -0x1

    .line 546
    goto/16 :goto_3

    .line 549
    :cond_e
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    .line 552
    :cond_f
    const/4 v12, -0x1

    .line 553
    const/4 v5, -0x1

    .line 554
    const/4 v13, -0x1

    .line 555
    goto/16 :goto_2
.end method

.method private startDrag(Lcom/oppo/widget/OppoRecipientChip;)V
    .locals 5
    .parameter "currentChip"

    .prologue
    .line 3009
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 3010
    .local v0, address:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 3013
    .local v1, data:Landroid/content/ClipData;
    new-instance v2, Lcom/oppo/widget/OppoRecipientEditTextView$OppoRecipientChipShadow;

    invoke-direct {v2, p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView$OppoRecipientChipShadow;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientChip;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 3017
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->removeChip(Lcom/oppo/widget/OppoRecipientChip;)V

    .line 3018
    return-void
.end method

.method private submitItemAtPosition(I)V
    .locals 7
    .parameter "position"

    .prologue
    .line 1935
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoRecipientEntry;

    invoke-direct {p0, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->createValidatedEntry(Lcom/oppo/widget/OppoRecipientEntry;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v3

    .line 1937
    .local v3, entry:Lcom/oppo/widget/OppoRecipientEntry;
    if-nez v3, :cond_0

    .line 1952
    :goto_0
    return-void

    .line 1940
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 1942
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 1943
    .local v2, end:I
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1945
    .local v4, start:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1946
    .local v1, editable:Landroid/text/Editable;
    const-string v5, ""

    invoke-static {v1, v4, v2, v5}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 1947
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->createChip(Lcom/oppo/widget/OppoRecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1948
    .local v0, chip:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    if-ltz v4, :cond_1

    if-ltz v2, :cond_1

    .line 1949
    invoke-interface {v1, v4, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1951
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->sanitizeBetween()V

    goto :goto_0
.end method

.method private tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "destination"

    .prologue
    .line 1242
    invoke-static {p1}, Lcom/oppo/widget/OppoTokenizer;->tokenize(Ljava/lang/CharSequence;)[Lcom/oppo/widget/OppoToken;

    move-result-object v0

    .line 1243
    .local v0, tokens:[Lcom/oppo/widget/OppoToken;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1244
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Lcom/oppo/widget/OppoToken;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 1246
    .end local p1
    :cond_0
    return-object p1
.end method

.method private unselectChip(Lcom/oppo/widget/OppoRecipientChip;)V
    .locals 6
    .parameter "chip"

    .prologue
    const/4 v5, -0x1

    .line 2419
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v3

    .line 2420
    .local v3, start:I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v2

    .line 2421
    .local v2, end:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2422
    .local v1, editable:Landroid/text/Editable;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    .line 2423
    if-eq v3, v5, :cond_0

    if-ne v2, v5, :cond_5

    .line 2424
    :cond_0
    const-string v4, "OppoRecipientEditTextView"

    const-string v5, "The chip doesn\'t exist or may be a chip a user was editing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    iget-boolean v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    if-nez v4, :cond_1

    .line 2426
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 2428
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitDefault()Z

    .line 2442
    :cond_2
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2443
    iget-boolean v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    if-nez v4, :cond_3

    .line 2444
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 2447
    :cond_3
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2448
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 2450
    :cond_4
    return-void

    .line 2430
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2431
    const-string v4, ""

    invoke-static {v1, v3, v2, v4}, Landroid/text/method/QwertyKeyListener;->markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V

    .line 2432
    invoke-interface {v1, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 2434
    :try_start_0
    iget-boolean v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    if-nez v4, :cond_2

    .line 2435
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->getEntry()Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v3, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->constructChipSpan(Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v4

    const/16 v5, 0x21

    invoke-interface {v1, v4, v3, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2438
    :catch_0
    move-exception v0

    .line 2439
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "OppoRecipientEditTextView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 409
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoRecipientEditTextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 412
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 413
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_1

    .line 414
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, displayString:Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 416
    .local v1, seperatorPos:I
    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_1

    .line 418
    iget v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    .line 419
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v0           #displayString:Ljava/lang/String;
    .end local v1           #seperatorPos:I
    :cond_1
    iget v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    if-lez v2, :cond_2

    .line 424
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->postHandlePendingChips()V

    .line 426
    :cond_2
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAddTextWatcher:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 427
    return-void
.end method

.method public contactToToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "context"
    .parameter "name"
    .parameter "phoneNumber"

    .prologue
    .line 1984
    const/4 v8, 0x0

    .line 1986
    .local v8, token:Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1987
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " <"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1992
    :goto_0
    invoke-direct {p0, v8}, Lcom/oppo/widget/OppoRecipientEditTextView;->createTokenizedEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;

    move-result-object v5

    .line 1993
    .local v5, entry:Lcom/oppo/widget/OppoRecipientEntry;
    const/4 v1, 0x0

    .line 1995
    .local v1, chipText:Landroid/text/SpannableString;
    if-eqz v5, :cond_1

    .line 1996
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->createAddressText(Lcom/oppo/widget/OppoRecipientEntry;)Ljava/lang/String;

    move-result-object v2

    .line 1999
    .local v2, destText:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 2000
    .local v7, textLength:I
    new-instance v1, Landroid/text/SpannableString;

    .end local v1           #chipText:Landroid/text/SpannableString;
    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2002
    .restart local v1       #chipText:Landroid/text/SpannableString;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 2003
    .local v4, end:I
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v9, v10, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v6

    .line 2004
    .local v6, start:I
    const/4 v0, 0x0

    .line 2007
    .local v0, chip:Lcom/oppo/widget/OppoRecipientChip;
    :try_start_0
    iget-boolean v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    if-nez v9, :cond_0

    .line 2008
    const/4 v9, 0x0

    invoke-direct {p0, v5, v6, v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->constructChipSpan(Lcom/oppo/widget/OppoRecipientEntry;IZ)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v0

    .line 2009
    const/4 v9, 0x0

    const/16 v10, 0x21

    invoke-virtual {v1, v0, v9, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2010
    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/oppo/widget/OppoRecipientChip;->setOriginalText(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2016
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 2021
    .end local v0           #chip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v2           #destText:Ljava/lang/String;
    .end local v4           #end:I
    .end local v6           #start:I
    .end local v7           #textLength:I
    :cond_1
    return-object v1

    .line 1989
    .end local v1           #chipText:Landroid/text/SpannableString;
    .end local v5           #entry:Lcom/oppo/widget/OppoRecipientEntry;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 2012
    .restart local v0       #chip:Lcom/oppo/widget/OppoRecipientChip;
    .restart local v1       #chipText:Landroid/text/SpannableString;
    .restart local v2       #destText:Ljava/lang/String;
    .restart local v4       #end:I
    .restart local v5       #entry:Lcom/oppo/widget/OppoRecipientEntry;
    .restart local v6       #start:I
    .restart local v7       #textLength:I
    :catch_0
    move-exception v3

    .line 2013
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v9, "OppoRecipientEditTextView"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method countTokens(Landroid/text/Editable;)I
    .locals 3
    .parameter "text"

    .prologue
    .line 2191
    const/4 v1, 0x0

    .line 2192
    .local v1, tokenCount:I
    const/4 v0, 0x0

    .line 2193
    .local v0, start:I
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2194
    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v2, p1, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/oppo/widget/OppoRecipientEditTextView;->movePastTerminators(I)I

    move-result v0

    .line 2195
    add-int/lit8 v1, v1, 0x1

    .line 2196
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 2200
    :cond_1
    return v1
.end method

.method createAddressText(Lcom/oppo/widget/OppoRecipientEntry;)Ljava/lang/String;
    .locals 7
    .parameter "entry"

    .prologue
    .line 1849
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1850
    .local v1, display:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1851
    .local v0, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1852
    :cond_0
    const/4 v1, 0x0

    .line 1855
    :cond_1
    invoke-static {v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1856
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1869
    .local v5, trimmedDisplayText:Ljava/lang/String;
    :goto_0
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1870
    .local v2, index:I
    iget-object v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    if-eqz v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v6, v5}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1
    return-object v6

    .line 1858
    .end local v2           #index:I
    .end local v5           #trimmedDisplayText:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 1861
    invoke-static {v0}, Lcom/oppo/widget/OppoTokenizer;->tokenize(Ljava/lang/CharSequence;)[Lcom/oppo/widget/OppoToken;

    move-result-object v4

    .line 1862
    .local v4, tokenized:[Lcom/oppo/widget/OppoToken;
    if-eqz v4, :cond_3

    array-length v6, v4

    if-lez v6, :cond_3

    .line 1863
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Lcom/oppo/widget/OppoToken;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1866
    .end local v4           #tokenized:[Lcom/oppo/widget/OppoToken;
    :cond_3
    new-instance v3, Lcom/oppo/widget/OppoToken;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v0, v6}, Lcom/oppo/widget/OppoToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    .local v3, token:Lcom/oppo/widget/OppoToken;
    invoke-virtual {v3}, Lcom/oppo/widget/OppoToken;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #trimmedDisplayText:Ljava/lang/String;
    goto :goto_0

    .end local v3           #token:Lcom/oppo/widget/OppoToken;
    .restart local v2       #index:I
    :cond_4
    move-object v6, v5

    .line 1870
    goto :goto_1
.end method

.method createChipDisplayText(Lcom/oppo/widget/OppoRecipientEntry;)Ljava/lang/String;
    .locals 5
    .parameter "entry"

    .prologue
    .line 1878
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 1879
    .local v1, display:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 1880
    .local v0, address:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1881
    :cond_0
    const/4 v1, 0x0

    .line 1884
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1887
    invoke-static {v0}, Lcom/oppo/widget/OppoTokenizer;->tokenize(Ljava/lang/CharSequence;)[Lcom/oppo/widget/OppoToken;

    move-result-object v2

    .line 1888
    .local v2, tokenized:[Lcom/oppo/widget/OppoToken;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 1889
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/oppo/widget/OppoToken;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1892
    .end local v2           #tokenized:[Lcom/oppo/widget/OppoToken;
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1897
    .end local v1           #display:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1894
    .restart local v1       #display:Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object v1, v0

    .line 1895
    goto :goto_0

    .line 1897
    :cond_4
    new-instance v3, Lcom/oppo/widget/OppoToken;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v0, v4}, Lcom/oppo/widget/OppoToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oppo/widget/OppoToken;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method createMoreChip()V
    .locals 22

    .prologue
    .line 2209
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2210
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->createMoreChipPlainText()V

    .line 2260
    :cond_0
    :goto_0
    return-void

    .line 2214
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mShouldShrink:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 2218
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Editable;->length()I

    move-result v20

    const-class v21, Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;

    invoke-interface/range {v18 .. v21}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/ImageSpan;

    .line 2219
    .local v14, tempMore:[Landroid/text/style/ImageSpan;
    array-length v0, v14

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 2220
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v14, v19

    invoke-interface/range {v18 .. v19}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2222
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v9

    .line 2224
    .local v9, recipients:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v9, :cond_3

    array-length v0, v9

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 2225
    :cond_3
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto :goto_0

    .line 2228
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v12

    .line 2229
    .local v12, spannable:Landroid/text/Spannable;
    array-length v7, v9

    .line 2230
    .local v7, numRecipients:I
    add-int/lit8 v8, v7, -0x2

    .line 2231
    .local v8, overage:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/oppo/widget/OppoRecipientEditTextView;->createMoreSpan(I)Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;

    move-result-object v6

    .line 2232
    .local v6, moreSpan:Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    .line 2233
    const/16 v17, 0x0

    .line 2234
    .local v17, totalReplaceStart:I
    const/16 v16, 0x0

    .line 2235
    .local v16, totalReplaceEnd:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 2236
    .local v15, text:Landroid/text/Editable;
    sub-int v5, v7, v8

    .local v5, i:I
    :goto_1
    array-length v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_9

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    aget-object v19, v9, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2238
    sub-int v18, v7, v8

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 2239
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    .line 2241
    :cond_5
    array-length v0, v9

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    .line 2242
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v16

    .line 2244
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    aget-object v19, v9, v5

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 2245
    :cond_7
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 2246
    .local v11, spanStart:I
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 2247
    .local v10, spanEnd:I
    aget-object v18, v9, v5

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/oppo/widget/OppoRecipientChip;->setOriginalText(Ljava/lang/String;)V

    .line 2249
    .end local v10           #spanEnd:I
    .end local v11           #spanStart:I
    :cond_8
    aget-object v18, v9, v5

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2236
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2251
    :cond_9
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    .line 2252
    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v16

    .line 2254
    :cond_a
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2255
    .local v4, end:I
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 2256
    .local v13, start:I
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v15, v13, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2257
    .local v3, chipText:Landroid/text/SpannableString;
    const/16 v18, 0x0

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v19

    const/16 v20, 0x21

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v3, v6, v0, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2258
    invoke-interface {v15, v13, v4, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2259
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    goto/16 :goto_0
.end method

.method createMoreChipPlainText()V
    .locals 10

    .prologue
    .line 2172
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2173
    .local v5, text:Landroid/text/Editable;
    const/4 v4, 0x0

    .line 2174
    .local v4, start:I
    move v1, v4

    .line 2175
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x2

    if-ge v2, v7, :cond_0

    .line 2176
    iget-object v7, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v7, v5, v4}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->movePastTerminators(I)I

    move-result v1

    .line 2177
    move v4, v1

    .line 2175
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2180
    :cond_0
    const/4 v4, 0x0

    .line 2181
    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoRecipientEditTextView;->countTokens(Landroid/text/Editable;)I

    move-result v6

    .line 2182
    .local v6, tokenCount:I
    add-int/lit8 v7, v6, -0x2

    invoke-direct {p0, v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->createMoreSpan(I)Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;

    move-result-object v3

    .line 2183
    .local v3, moreSpan:Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;
    new-instance v0, Landroid/text/SpannableString;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2184
    .local v0, chipText:Landroid/text/SpannableString;
    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2185
    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v1, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2186
    iput-object v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2187
    return-void
.end method

.method public enableDrag()V
    .locals 1

    .prologue
    .line 3002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mDragEnabled:Z

    .line 3003
    return-void
.end method

.method getChipBackground(Lcom/oppo/widget/OppoRecipientEntry;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "contact"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method getContactIds()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2046
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2047
    .local v5, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v2

    .line 2048
    .local v2, chips:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v2, :cond_0

    .line 2049
    move-object v0, v2

    .local v0, arr$:[Lcom/oppo/widget/OppoRecipientChip;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2050
    .local v1, chip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoRecipientChip;->getContactId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2049
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2053
    .end local v0           #arr$:[Lcom/oppo/widget/OppoRecipientChip;
    .end local v1           #chip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-object v5
.end method

.method getDataIds()Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2058
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 2059
    .local v5, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v2

    .line 2060
    .local v2, chips:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v2, :cond_0

    .line 2061
    move-object v0, v2

    .local v0, arr$:[Lcom/oppo/widget/OppoRecipientChip;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2062
    .local v1, chip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-virtual {v1}, Lcom/oppo/widget/OppoRecipientChip;->getDataId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2061
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2065
    .end local v0           #arr$:[Lcom/oppo/widget/OppoRecipientChip;
    .end local v1           #chip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-object v5
.end method

.method getLastChip()Lcom/oppo/widget/OppoRecipientChip;
    .locals 3

    .prologue
    .line 365
    const/4 v1, 0x0

    .line 366
    .local v1, last:Lcom/oppo/widget/OppoRecipientChip;
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v0

    .line 367
    .local v0, chips:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 368
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v0, v2

    .line 370
    :cond_0
    return-object v1
.end method

.method getMoreChip()Landroid/text/style/ImageSpan;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2142
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;

    .line 2144
    .local v0, moreSpans:[Lcom/oppo/widget/OppoRecipientEditTextView$MoreImageSpan;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v4

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNumbers()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1958
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1960
    .local v2, destinationList:Ljava/lang/String;
    if-nez v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 1961
    const/4 v1, 0x0

    .line 1977
    :cond_0
    return-object v1

    .line 1964
    :cond_1
    invoke-static {v2}, Lcom/oppo/widget/OppoTokenizer;->tokenize(Ljava/lang/CharSequence;)[Lcom/oppo/widget/OppoToken;

    move-result-object v7

    .line 1965
    .local v7, tokens:[Lcom/oppo/widget/OppoToken;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    .local v1, destination:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    array-length v4, v7

    .local v4, length:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 1968
    aget-object v6, v7, v3

    .line 1969
    .local v6, token:Lcom/oppo/widget/OppoToken;
    invoke-virtual {v6}, Lcom/oppo/widget/OppoToken;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1971
    .local v0, dest:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1972
    invoke-virtual {v6}, Lcom/oppo/widget/OppoToken;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1973
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getQueryType(I)I
    .locals 1
    .parameter "queryType"

    .prologue
    .line 361
    iget v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mQueryType:I

    return v0
.end method

.method getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;
    .locals 7

    .prologue
    .line 2094
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    const-class v6, Lcom/oppo/widget/OppoRecipientChip;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/widget/OppoRecipientChip;

    .line 2096
    .local v1, recips:[Lcom/oppo/widget/OppoRecipientChip;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2098
    .local v0, recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoRecipientChip;>;"
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 2099
    .local v2, spannable:Landroid/text/Spannable;
    new-instance v3, Lcom/oppo/widget/OppoRecipientEditTextView$7;

    invoke-direct {v3, p0, v2}, Lcom/oppo/widget/OppoRecipientEditTextView$7;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/oppo/widget/OppoRecipientChip;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/oppo/widget/OppoRecipientChip;

    return-object v3
.end method

.method getSortedRecipients(I)[Lcom/oppo/widget/OppoRecipientChip;
    .locals 6
    .parameter "end"

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    const/4 v4, 0x0

    const-class v5, Lcom/oppo/widget/OppoRecipientChip;

    invoke-interface {v3, v4, p1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oppo/widget/OppoRecipientChip;

    .line 2070
    .local v1, recips:[Lcom/oppo/widget/OppoRecipientChip;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2072
    .local v0, recipientsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoRecipientChip;>;"
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 2073
    .local v2, spannable:Landroid/text/Spannable;
    new-instance v3, Lcom/oppo/widget/OppoRecipientEditTextView$6;

    invoke-direct {v3, p0, v2}, Lcom/oppo/widget/OppoRecipientEditTextView$6;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Landroid/text/Spannable;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2089
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/oppo/widget/OppoRecipientChip;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/oppo/widget/OppoRecipientChip;

    return-object v3
.end method

.method getSpannable()Landroid/text/Spannable;
    .locals 1

    .prologue
    .line 1595
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method getViewWidth()I
    .locals 1

    .prologue
    .line 1065
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method handlePaste()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoRecipientChip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2708
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2711
    .local v11, text:Ljava/lang/String;
    const-string v15, "\r\n"

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2712
    const-string v15, "\n"

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2713
    sget-object v15, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2715
    const/4 v10, 0x0

    .line 2716
    .local v10, start:I
    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 2717
    .local v12, textArray:[C
    const/4 v6, -0x1

    .line 2718
    .local v6, i:I
    const/4 v15, 0x0

    aget-char v1, v12, v15

    .line 2721
    .local v1, ch:C
    :cond_0
    :goto_0
    add-int/lit8 v6, v6, 0x1

    .line 2723
    array-length v15, v12

    if-lt v6, v15, :cond_1

    .line 2740
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2743
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v15, v11, v0}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 2744
    .local v8, originalTokenStart:I
    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2745
    .local v7, lastAddress:Ljava/lang/String;
    move v14, v8

    .line 2746
    .local v14, tokenStart:I
    move v9, v14

    .line 2747
    .local v9, prevTokenStart:I
    const/4 v5, 0x0

    .line 2748
    .local v5, findChip:Lcom/oppo/widget/OppoRecipientChip;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2749
    .local v2, created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoRecipientChip;>;"
    if-eqz v14, :cond_6

    .line 2751
    :goto_1
    if-eqz v14, :cond_4

    if-nez v5, :cond_4

    .line 2752
    move v9, v14

    .line 2753
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v15, v11, v14}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v14

    .line 2754
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->findChip(I)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v5

    goto :goto_1

    .line 2727
    .end local v2           #created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoRecipientChip;>;"
    .end local v5           #findChip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v7           #lastAddress:Ljava/lang/String;
    .end local v8           #originalTokenStart:I
    .end local v9           #prevTokenStart:I
    .end local v14           #tokenStart:I
    :cond_1
    aget-char v1, v12, v6

    .line 2729
    aget-char v15, v12, v6

    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    aget-char v15, v12, v6

    const/16 v16, 0x2c

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    aget-char v15, v12, v6

    const/16 v16, 0x3b

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 2730
    :cond_2
    add-int/lit8 v15, v6, -0x1

    if-ge v10, v15, :cond_3

    .line 2731
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/oppo/widget/OppoRecipientEditTextView;->handleEdit(II)V

    .line 2732
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 2733
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    add-int/lit8 v10, v15, 0x1

    goto :goto_0

    .line 2735
    :cond_3
    move v10, v6

    goto :goto_0

    .line 2756
    .restart local v2       #created:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/oppo/widget/OppoRecipientChip;>;"
    .restart local v5       #findChip:Lcom/oppo/widget/OppoRecipientChip;
    .restart local v7       #lastAddress:Ljava/lang/String;
    .restart local v8       #originalTokenStart:I
    .restart local v9       #prevTokenStart:I
    .restart local v14       #tokenStart:I
    :cond_4
    if-eq v14, v8, :cond_6

    .line 2757
    if-eqz v5, :cond_5

    .line 2758
    move v14, v9

    .line 2762
    :cond_5
    :goto_2
    if-ge v14, v8, :cond_6

    .line 2763
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v15, v11, v14}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/oppo/widget/OppoRecipientEditTextView;->movePastTerminators(I)I

    move-result v13

    .line 2764
    .local v13, tokenEnd:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13, v15}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2765
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->findChip(I)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v3

    .line 2766
    .local v3, createdChip:Lcom/oppo/widget/OppoRecipientChip;
    if-nez v3, :cond_8

    .line 2777
    .end local v3           #createdChip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v13           #tokenEnd:I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 2778
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 2779
    .local v4, editable:Landroid/text/Editable;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    .line 2780
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v4}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitChip(IILandroid/text/Editable;)Z

    .line 2781
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/oppo/widget/OppoRecipientEditTextView;->findChip(I)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2783
    .end local v4           #editable:Landroid/text/Editable;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setSelection(I)V

    .line 2784
    return-object v2

    .line 2770
    .restart local v3       #createdChip:Lcom/oppo/widget/OppoRecipientChip;
    .restart local v13       #tokenEnd:I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v15

    invoke-interface {v15, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    add-int/lit8 v14, v15, 0x1

    .line 2771
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method handlePendingChips()V
    .locals 13

    .prologue
    const/4 v8, 0x2

    .line 1005
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getViewWidth()I

    move-result v5

    if-gtz v5, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_0

    .line 1015
    iget-object v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    monitor-enter v6

    .line 1016
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1018
    .local v1, editable:Landroid/text/Editable;
    iget v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    const/16 v7, 0x32

    if-gt v5, v7, :cond_6

    .line 1019
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1020
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1021
    .local v0, current:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1022
    .local v4, tokenStart:I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v4, v5

    .line 1023
    .local v3, tokenEnd:I
    if-ltz v4, :cond_3

    .line 1026
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_2

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_2

    .line 1028
    add-int/lit8 v3, v3, 0x1

    .line 1030
    :cond_2
    invoke-direct {p0, v4, v3, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->createReplacementChip(IILandroid/text/Editable;)V

    .line 1032
    :cond_3
    iget v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    .line 1019
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1034
    .end local v0           #current:Ljava/lang/String;
    .end local v3           #tokenEnd:I
    .end local v4           #tokenStart:I
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->sanitizeEnd()V

    .line 1039
    .end local v2           #i:I
    :goto_2
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget v7, Lcom/oppo/widget/OppoRecipientAlternatesAdapter;->MAX_LOOKUPS:I

    if-gt v5, v7, :cond_8

    .line 1041
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v5, v8, :cond_7

    .line 1042
    :cond_5
    new-instance v5, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/oppo/widget/OppoRecipientEditTextView$RecipientReplacementTask;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEditTextView$1;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1043
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1058
    :goto_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    .line 1059
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChips:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1060
    monitor-exit v6

    goto/16 :goto_0

    .end local v1           #editable:Landroid/text/Editable;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1036
    .restart local v1       #editable:Landroid/text/Editable;
    :cond_6
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mNoChips:Z

    goto :goto_2

    .line 1046
    :cond_7
    new-instance v5, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;-><init>(Lcom/oppo/widget/OppoRecipientEditTextView;Lcom/oppo/widget/OppoRecipientEditTextView$1;)V

    iput-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mIndividualReplacements:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

    .line 1047
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mIndividualReplacements:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1050
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->createMoreChip()V

    goto :goto_3

    .line 1055
    :cond_8
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTemporaryRecipients:Ljava/util/ArrayList;

    .line 1056
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->createMoreChip()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method isCompletedToken(Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "text"

    .prologue
    const/4 v4, 0x0

    .line 1630
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1642
    :cond_0
    :goto_0
    return v4

    .line 1634
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1635
    .local v1, end:I
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v5, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 1636
    .local v2, start:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1637
    .local v3, token:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1638
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1639
    .local v0, atEnd:C
    const/16 v5, 0x2c

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_2

    const v5, 0xff0c

    if-ne v0, v5, :cond_0

    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method movePastTerminators(I)I
    .locals 4
    .parameter "tokenEnd"

    .prologue
    .line 2789
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lt p1, v2, :cond_0

    move v1, p1

    .line 2802
    .end local p1
    .local v1, tokenEnd:I
    :goto_0
    return v1

    .line 2792
    .end local v1           #tokenEnd:I
    .restart local p1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2793
    .local v0, atEnd:C
    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_1

    const v2, 0xff0c

    if-ne v0, v2, :cond_2

    .line 2795
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 2799
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3

    .line 2800
    add-int/lit8 p1, p1, 0x1

    :cond_3
    move v1, p1

    .line 2802
    .end local p1
    .restart local v1       #tokenEnd:I
    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 2121
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedItemChanged(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1787
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1788
    .local v0, listView:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1789
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 1791
    :cond_0
    iput p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCheckedItem:I

    .line 1792
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 3111
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3113
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const-string v1, ""

    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 3114
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCopyDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3115
    return-void
.end method

.method public onClick(Lcom/oppo/widget/OppoRecipientChip;IFF)V
    .locals 1
    .parameter "chip"
    .parameter "offset"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2536
    invoke-virtual {p1}, Lcom/oppo/widget/OppoRecipientChip;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2537
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/widget/OppoRecipientEditTextView;->isInDelete(Lcom/oppo/widget/OppoRecipientChip;IFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2538
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->removeChip(Lcom/oppo/widget/OppoRecipientChip;)V

    .line 2543
    :cond_0
    :goto_0
    return-void

    .line 2540
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2137
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 316
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v2, 0xff

    .line 317
    .local v1, imeActions:I
    and-int/lit8 v2, v1, 0x6

    if-eqz v2, :cond_0

    .line 319
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    xor-int/2addr v2, v1

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 321
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x6

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 323
    :cond_0
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 324
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, -0x40000001

    and-int/2addr v2, v3

    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 327
    :cond_1
    return-object v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2125
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 3105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    .line 3106
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 2967
    const/4 v0, 0x0

    return v0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 3025
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3036
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3028
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 3030
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 3033
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 3025
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "action"
    .parameter "keyEvent"

    .prologue
    const/4 v0, 0x1

    .line 299
    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 300
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v1, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 306
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->focusNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 2973
    const/4 v0, 0x0

    return v0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "hasFocus"
    .parameter "direction"
    .parameter "previous"

    .prologue
    .line 431
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 432
    if-nez p1, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->shrink()V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->expand()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1931
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/oppo/widget/OppoRecipientEditTextView;->submitItemAtPosition(I)V

    .line 1932
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 1580
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mAlternatesPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->removeChip(Lcom/oppo/widget/OppoRecipientChip;)V

    .line 1586
    :cond_1
    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1587
    const/4 v0, 0x1

    .line 1590
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1275
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v0, :cond_0

    .line 1276
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    .line 1277
    const/4 v0, 0x1

    .line 1279
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1291
    sparse-switch p1, :sswitch_data_0

    .line 1319
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    .line 1294
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitDefault()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1298
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v1, :cond_2

    .line 1299
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1301
    :cond_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->focusNext()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1307
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v1, :cond_3

    .line 1309
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    .line 1313
    :goto_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->focusNext()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1311
    :cond_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitDefault()Z

    goto :goto_1

    .line 1291
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 2978
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v4, :cond_1

    .line 2996
    :cond_0
    :goto_0
    return-void

    .line 2981
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 2982
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 2983
    .local v3, y:F
    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoRecipientEditTextView;->putOffsetInRange(I)I

    move-result v1

    .line 2984
    .local v1, offset:I
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->findChip(I)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v0

    .line 2985
    .local v0, currentChip:Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v0, :cond_0

    .line 2986
    iget-boolean v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mDragEnabled:Z

    if-eqz v4, :cond_0

    .line 2988
    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoRecipientEditTextView;->startDrag(Lcom/oppo/widget/OppoRecipientChip;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 2129
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 397
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    .line 398
    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 3089
    const/4 v0, 0x0

    return v0
.end method

.method public onSelectionChanged(II)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getLastChip()Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v0

    .line 378
    .local v0, last:Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    if-nez v1, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 382
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 383
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 3095
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 3100
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 962
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 963
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 964
    iget v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    if-lez v1, :cond_1

    .line 965
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->postHandlePendingChips()V

    .line 971
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTriedGettingScrollView:Z

    if-nez v1, :cond_4

    .line 972
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 973
    .local v0, parent:Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_2

    .line 974
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    .line 967
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->checkChipWidths()V

    goto :goto_0

    .line 976
    .restart local v0       #parent:Landroid/view/ViewParent;
    :cond_2
    if-eqz v0, :cond_3

    .line 977
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0           #parent:Landroid/view/ViewParent;
    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mScrollView:Landroid/widget/ScrollView;

    .line 979
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTriedGettingScrollView:Z

    .line 981
    :cond_4
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 2688
    const v1, 0x1020022

    if-ne p1, v1, :cond_0

    .line 2689
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2691
    .local v0, clipboard:Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoRecipientEditTextView;->handlePasteClip(Landroid/content/ClipData;)V

    .line 2692
    const/4 v1, 0x1

    .line 2694
    .end local v0           #clipboard:Landroid/content/ClipboardManager;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 1662
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1664
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1720
    :cond_0
    :goto_0
    return v5

    .line 1666
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1667
    .local v5, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1668
    .local v0, action:I
    const/4 v2, 0x0

    .line 1669
    .local v2, chipWasSelected:Z
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-nez v10, :cond_2

    .line 1670
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1672
    :cond_2
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCopyAddress:Ljava/lang/String;

    if-nez v10, :cond_5

    const/4 v10, 0x1

    if-ne v0, v10, :cond_5

    .line 1673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1674
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1675
    .local v9, y:F
    invoke-virtual {p0, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/oppo/widget/OppoRecipientEditTextView;->putOffsetInRange(I)I

    move-result v6

    .line 1676
    .local v6, offset:I
    invoke-direct {p0, v6}, Lcom/oppo/widget/OppoRecipientEditTextView;->findChip(I)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v3

    .line 1677
    .local v3, currentChip:Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v3, :cond_9

    .line 1678
    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    .line 1679
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eq v10, v3, :cond_6

    .line 1680
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    .line 1681
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->selectChip(Lcom/oppo/widget/OppoRecipientChip;)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v10

    iput-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    .line 1692
    :goto_1
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    if-eqz v10, :cond_4

    .line 1693
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v10

    iget-object v11, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    invoke-interface {v10, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 1694
    .local v7, spanEnd:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 1696
    .local v4, editable:Landroid/text/Editable;
    if-lez v7, :cond_4

    .line 1697
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v10

    add-int/lit8 v11, v7, 0x1

    if-le v10, v11, :cond_3

    .line 1698
    add-int/lit8 v10, v7, 0x1

    invoke-interface {v4, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    .line 1700
    .local v1, charAt:C
    const/16 v10, 0x20

    if-ne v1, v10, :cond_3

    .line 1701
    add-int/lit8 v7, v7, 0x1

    .line 1705
    .end local v1           #charAt:C
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1710
    .end local v4           #editable:Landroid/text/Editable;
    .end local v7           #spanEnd:I
    :cond_4
    const/4 v2, 0x1

    .line 1711
    const/4 v5, 0x1

    .line 1717
    .end local v3           #currentChip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v6           #offset:I
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_5
    :goto_2
    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    if-nez v2, :cond_0

    .line 1718
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    goto :goto_0

    .line 1682
    .restart local v3       #currentChip:Lcom/oppo/widget/OppoRecipientChip;
    .restart local v6       #offset:I
    .restart local v8       #x:F
    .restart local v9       #y:F
    :cond_6
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-nez v10, :cond_8

    .line 1683
    iget-boolean v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    if-nez v10, :cond_7

    .line 1684
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 1686
    :cond_7
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->commitDefault()Z

    .line 1687
    invoke-direct {p0, v3}, Lcom/oppo/widget/OppoRecipientEditTextView;->selectChip(Lcom/oppo/widget/OppoRecipientChip;)Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v10

    iput-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    goto :goto_1

    .line 1689
    :cond_8
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    invoke-virtual {p0, v10, v6, v8, v9}, Lcom/oppo/widget/OppoRecipientEditTextView;->onClick(Lcom/oppo/widget/OppoRecipientChip;IFF)V

    goto :goto_1

    .line 1712
    :cond_9
    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    invoke-virtual {v10}, Lcom/oppo/widget/OppoRecipientChip;->getContactId()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 1714
    const/4 v2, 0x1

    goto :goto_2
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 1614
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->enoughToFilter()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->isCompletedToken(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1615
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 1616
    .local v1, end:I
    iget-object v4, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-interface {v4, p1, v1}, Landroid/widget/MultiAutoCompleteTextView$Tokenizer;->findTokenStart(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1619
    .local v3, start:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 1620
    .local v2, span:Landroid/text/Spannable;
    const-class v4, Lcom/oppo/widget/OppoRecipientChip;

    invoke-interface {v2, v3, v1, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oppo/widget/OppoRecipientChip;

    .line 1621
    .local v0, chips:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 1626
    .end local v0           #chips:[Lcom/oppo/widget/OppoRecipientChip;
    .end local v1           #end:I
    .end local v2           #span:Landroid/text/Spannable;
    .end local v3           #start:I
    :goto_0
    return-void

    .line 1625
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public performValidation()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method removeChip(Lcom/oppo/widget/OppoRecipientChip;)V
    .locals 8
    .parameter "chip"

    .prologue
    .line 2470
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    .line 2471
    .local v2, spannable:Landroid/text/Spannable;
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 2472
    .local v1, spanStart:I
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 2473
    .local v0, spanEnd:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2474
    .local v3, text:Landroid/text/Editable;
    move v4, v0

    .line 2475
    .local v4, toDelete:I
    iget-object v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-ne p1, v6, :cond_1

    const/4 v5, 0x1

    .line 2477
    .local v5, wasSelected:Z
    :goto_0
    if-eqz v5, :cond_0

    .line 2478
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    .line 2481
    :cond_0
    :goto_1
    if-ltz v4, :cond_2

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 2482
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2475
    .end local v5           #wasSelected:Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2484
    .restart local v5       #wasSelected:Z
    :cond_2
    invoke-interface {v2, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2485
    if-ltz v1, :cond_3

    if-lez v4, :cond_3

    .line 2486
    invoke-interface {v3, v1, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2488
    :cond_3
    if-eqz v5, :cond_4

    .line 2489
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    .line 2491
    :cond_4
    return-void
.end method

.method removeMoreChip()V
    .locals 11

    .prologue
    .line 2268
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v9, :cond_0

    .line 2269
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v7

    .line 2270
    .local v7, span:Landroid/text/Spannable;
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    invoke-interface {v7, v9}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2271
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 2273
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 2275
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v6

    .line 2278
    .local v6, recipients:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v6, :cond_0

    array-length v9, v6

    if-nez v9, :cond_1

    .line 2304
    .end local v6           #recipients:[Lcom/oppo/widget/OppoRecipientChip;
    .end local v7           #span:Landroid/text/Spannable;
    :cond_0
    :goto_0
    return-void

    .line 2281
    .restart local v6       #recipients:[Lcom/oppo/widget/OppoRecipientChip;
    .restart local v7       #span:Landroid/text/Spannable;
    :cond_1
    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    invoke-interface {v7, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 2282
    .local v4, end:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2283
    .local v3, editable:Landroid/text/Editable;
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoRecipientChip;

    .line 2288
    .local v0, chip:Lcom/oppo/widget/OppoRecipientChip;
    invoke-virtual {v0}, Lcom/oppo/widget/OppoRecipientChip;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2293
    .local v8, token:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2294
    .local v2, chipStart:I
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .local v1, chipEnd:I
    move v4, v1

    .line 2296
    const/4 v9, -0x1

    if-eq v2, v9, :cond_2

    .line 2297
    const/16 v9, 0x21

    invoke-interface {v3, v0, v2, v1, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 2301
    .end local v0           #chip:Lcom/oppo/widget/OppoRecipientChip;
    .end local v1           #chipEnd:I
    .end local v2           #chipStart:I
    .end local v8           #token:Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mRemovedSpans:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 2551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 2552
    invoke-super {p0, p1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2553
    return-void
.end method

.method replaceChip(Lcom/oppo/widget/OppoRecipientChip;Lcom/oppo/widget/OppoRecipientEntry;)V
    .locals 10
    .parameter "chip"
    .parameter "entry"

    .prologue
    const/4 v6, 0x1

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 2498
    iget-object v8, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    if-ne p1, v8, :cond_4

    move v5, v6

    .line 2499
    .local v5, wasSelected:Z
    :goto_0
    if-eqz v5, :cond_0

    .line 2500
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mSelectedChip:Lcom/oppo/widget/OppoRecipientChip;

    .line 2502
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipStart(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v3

    .line 2503
    .local v3, start:I
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoRecipientEditTextView;->getChipEnd(Lcom/oppo/widget/OppoRecipientChip;)I

    move-result v2

    .line 2504
    .local v2, end:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v8

    invoke-interface {v8, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2505
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2506
    .local v1, editable:Landroid/text/Editable;
    invoke-direct {p0, p2, v7}, Lcom/oppo/widget/OppoRecipientEditTextView;->createChip(Lcom/oppo/widget/OppoRecipientEntry;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2507
    .local v0, chipText:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 2508
    if-eq v3, v9, :cond_1

    if-ne v2, v9, :cond_5

    .line 2509
    :cond_1
    const-string v8, "OppoRecipientEditTextView"

    const-string v9, "The chip to replace does not exist but should."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    invoke-interface {v1, v7, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2525
    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 2526
    if-eqz v5, :cond_3

    .line 2527
    invoke-direct {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->clearSelectedChip()V

    .line 2529
    :cond_3
    return-void

    .end local v0           #chipText:Ljava/lang/CharSequence;
    .end local v1           #editable:Landroid/text/Editable;
    .end local v2           #end:I
    .end local v3           #start:I
    .end local v5           #wasSelected:Z
    :cond_4
    move v5, v7

    .line 2498
    goto :goto_0

    .line 2512
    .restart local v0       #chipText:Ljava/lang/CharSequence;
    .restart local v1       #editable:Landroid/text/Editable;
    .restart local v2       #end:I
    .restart local v3       #start:I
    .restart local v5       #wasSelected:Z
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2516
    move v4, v2

    .line 2518
    .local v4, toReplace:I
    :goto_2
    if-ltz v4, :cond_6

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v4, v7, :cond_6

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_6

    .line 2519
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2521
    :cond_6
    invoke-interface {v1, v3, v4, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1267
    return-void
.end method

.method sanitizeBetween()V
    .locals 8

    .prologue
    .line 1506
    iget v6, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    if-lez v6, :cond_1

    .line 1534
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v3

    .line 1511
    .local v3, recips:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 1512
    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v3, v6

    .line 1513
    .local v2, last:Lcom/oppo/widget/OppoRecipientChip;
    const/4 v0, 0x0

    .line 1514
    .local v0, beforeLast:Lcom/oppo/widget/OppoRecipientChip;
    array-length v6, v3

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 1515
    array-length v6, v3

    add-int/lit8 v6, v6, -0x2

    aget-object v0, v3, v6

    .line 1517
    :cond_2
    const/4 v4, 0x0

    .line 1518
    .local v4, startLooking:I
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1519
    .local v1, end:I
    if-eqz v0, :cond_3

    .line 1520
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1521
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1522
    .local v5, text:Landroid/text/Editable;
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-gt v4, v6, :cond_0

    .line 1526
    invoke-interface {v5, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v6, v7, :cond_3

    .line 1527
    add-int/lit8 v4, v4, 0x1

    .line 1530
    .end local v5           #text:Landroid/text/Editable;
    :cond_3
    if-ltz v4, :cond_0

    if-ltz v1, :cond_0

    if-ge v4, v1, :cond_0

    .line 1531
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method

.method sanitizeEnd()V
    .locals 8

    .prologue
    .line 1074
    iget v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mPendingChipsCount:I

    if-lez v5, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSortedRecipients()[Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v0

    .line 1079
    .local v0, chips:[Lcom/oppo/widget/OppoRecipientChip;
    if-eqz v0, :cond_0

    array-length v5, v0

    if-lez v5, :cond_0

    .line 1082
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getMoreChip()Landroid/text/style/ImageSpan;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1083
    iget-object v5, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    if-eqz v5, :cond_3

    .line 1084
    iget-object v3, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreChip:Landroid/text/style/ImageSpan;

    .line 1088
    .local v3, lastSpan:Landroid/text/style/ImageSpan;
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1089
    .local v2, end:I
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1090
    .local v1, editable:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    .line 1091
    .local v4, length:I
    if-le v4, v2, :cond_0

    .line 1093
    const-string v5, "OppoRecipientEditTextView"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1094
    const-string v5, "OppoRecipientEditTextView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There were extra characters after the last tokenizable entry."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 1086
    .end local v1           #editable:Landroid/text/Editable;
    .end local v2           #end:I
    .end local v3           #lastSpan:Landroid/text/style/ImageSpan;
    .end local v4           #length:I
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/widget/OppoRecipientEditTextView;->getLastChip()Lcom/oppo/widget/OppoRecipientChip;

    move-result-object v3

    .restart local v3       #lastSpan:Landroid/text/style/ImageSpan;
    goto :goto_1
.end method

.method public setAlternatesAdapter(Lcom/oppo/widget/OppoRecipientAlternatesAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mOppoRecipientAlternatesAdapter:Lcom/oppo/widget/OppoRecipientAlternatesAdapter;

    .line 355
    return-void
.end method

.method public setChipBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "chipBackground"

    .prologue
    .line 866
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackground:Landroid/graphics/drawable/Drawable;

    .line 867
    return-void
.end method

.method public setChipBackgroundPressed(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "chipBackgroundPressed"

    .prologue
    .line 884
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipBackgroundPressed:Landroid/graphics/drawable/Drawable;

    .line 885
    return-void
.end method

.method public setChipDelete(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "chipDelete"

    .prologue
    .line 893
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipDelete:Landroid/graphics/drawable/Drawable;

    .line 894
    return-void
.end method

.method public setChipFontSize(F)V
    .locals 0
    .parameter "chipFontSize"

    .prologue
    .line 920
    iput p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipFontSize:F

    .line 921
    return-void
.end method

.method public setChipHeight(I)V
    .locals 1
    .parameter "height"

    .prologue
    .line 875
    int-to-float v0, p1

    iput v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipHeight:F

    .line 876
    return-void
.end method

.method public setChipPadding(I)V
    .locals 0
    .parameter "chipPadding"

    .prologue
    .line 911
    iput p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mChipPadding:I

    .line 912
    return-void
.end method

.method public setCopyViewRes(I)V
    .locals 0
    .parameter "copyViewRes"

    .prologue
    .line 929
    iput p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCopyViewRes:I

    .line 930
    return-void
.end method

.method public setDefaultContactPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "defaultContactPhoto"

    .prologue
    .line 938
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mDefaultContactPhoto:Landroid/graphics/Bitmap;

    .line 939
    return-void
.end method

.method public setInvalidChipBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "invalidChipBackground"

    .prologue
    .line 902
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mInvalidChipBackground:Landroid/graphics/drawable/Drawable;

    .line 903
    return-void
.end method

.method public setMoreItem(Landroid/widget/TextView;)V
    .locals 0
    .parameter "moreItem"

    .prologue
    .line 857
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mMoreItem:Landroid/widget/TextView;

    .line 858
    return-void
.end method

.method public setOnFocusListShrinkRecipients(Z)V
    .locals 0
    .parameter "shrink"

    .prologue
    .line 957
    iput-boolean p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mShouldShrink:Z

    .line 958
    return-void
.end method

.method public setPhotoByteToEntry(Lcom/oppo/widget/OppoRecipientEntry;Landroid/net/Uri;)V
    .locals 0
    .parameter "entry"
    .parameter "photoThumbnailUri"

    .prologue
    .line 947
    return-void
.end method

.method public setRecipientCursorVisible(Z)V
    .locals 0
    .parameter "cursorVisible"

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mCursorVisible:Z

    .line 346
    return-void
.end method

.method public setShowPhoto(Z)V
    .locals 0
    .parameter "isShow"

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mShowPhoto:Z

    .line 337
    return-void
.end method

.method public setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V
    .locals 1
    .parameter "tokenizer"

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    .line 1252
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mTokenizer:Landroid/widget/MultiAutoCompleteTextView$Tokenizer;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1253
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1258
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1259
    return-void
.end method
