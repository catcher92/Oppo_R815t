.class public Lcom/oppo/widget/OppoOptionMenuBar;
.super Landroid/widget/FrameLayout;
.source "OppoOptionMenuBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;,
        Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_BACKGROUND_EXPANDED:F = 0.3f

.field private static final BUTTON_MORE_ID:I = 0x7fffffff

.field private static final DEFAULT_FILL_LAYOUT_SPACE:Z = true

.field public static final DEFAULT_MAJOR_OPERATION_COUNT:I = 0x4

.field private static final FOURCHILD:I = 0x4

.field private static final LAYOUT_WEIGHT_DEFAULT:F = 1.0f

.field private static final LAYOUT_WEIGHT_ONE_WITH_ONE:F = 4.375f

.field private static final LAYOUT_WEIGHT_THREE_WITH_ONE:F = 1.4307692f

.field private static final LAYOUT_WEIGHT_TWO_WITH_ONE:F = 2.1875f

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_INVALIDATE:Z = false

.field private static final MAX_MAJOR_OPERTION_COUNT_IF_MORE_ENABLED:I = 0x3

.field private static final NONECHILD:I = 0x0

.field private static final ONECHILD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OppoOptionMenuBar"

.field private static final THREECHILD:I = 0x3

.field private static final TWOECHILD:I = 0x2


# instance fields
.field private final MSG_REFRESH_VIEWS:I

.field private final MSG_SCROLL_DOWN:I

.field private final MSG_SCROLL_UP:I

.field private final REFRESH_VIEWS_DELAY_MILLIS:J

.field private isCurrentTopVisible:Z

.field private isCustomized:Z

.field private isFillLayoutSpace:Z

.field private isFlowMenu:Z

.field private isInflated:Z

.field private isMoreOperationGroupScrolling:Z

.field private isMoreOperationsEnabled:Z

.field private isMoreOperationsGroupExpanded:Z

.field private isRefreshGallery:Z

.field private isStepIntoNewActivity:Z

.field private isViewPager:Z

.field private mClickDuration:J

.field private mContext:Landroid/content/Context;

.field private mDecorMask:Landroid/widget/ImageView;

.field private mDecorView:Landroid/view/View;

.field private mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

.field private mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

.field private mGalleryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

.field private mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mMajorHopeCount:I

.field private mMajorOperationBg:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationClickListener:Landroid/view/View$OnClickListener;

.field private mMajorOperationCount:I

.field private mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

.field private mMajorOperationHeight:I

.field private mMajorOperationsGroup:Landroid/widget/LinearLayout;

.field private mMajorOperationsLayout:Landroid/widget/LinearLayout;

.field private mMajorOpertionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

.field private mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreOpertationsGroup:Landroid/widget/Gallery;

.field private mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

.field private mPreviousClickUpTime:J

.field private mScrollAnimationDuration:J

.field private mVisibleMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVisiblity:I

.field private offsetedDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 194
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->onFinishInflate()V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 198
    const v0, 0xc010432

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoOptionMenuBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 202
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 90
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 96
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 98
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 100
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 101
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 103
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 105
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 106
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 107
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    .line 108
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 110
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 112
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 113
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 115
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 118
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 120
    const/4 v7, 0x4

    iput v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 121
    const/4 v7, 0x4

    iput v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 123
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 124
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 125
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 126
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 128
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 130
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 131
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 133
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 134
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 136
    const/4 v7, 0x0

    iput v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 138
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 140
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 142
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 145
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 146
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 148
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 149
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 151
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 155
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    .line 164
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 170
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 172
    const/4 v7, 0x0

    iput v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 174
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 401
    new-instance v7, Lcom/oppo/widget/OppoOptionMenuBar$1;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoOptionMenuBar$1;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    .line 443
    new-instance v7, Lcom/oppo/widget/OppoOptionMenuBar$2;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoOptionMenuBar$2;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    .line 1498
    const/4 v7, 0x0

    iput v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_SCROLL_UP:I

    .line 1499
    const/4 v7, 0x1

    iput v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_SCROLL_DOWN:I

    .line 1501
    const/4 v7, 0x2

    iput v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->MSG_REFRESH_VIEWS:I

    .line 1503
    const-wide/16 v7, 0xa

    iput-wide v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->REFRESH_VIEWS_DELAY_MILLIS:J

    .line 1505
    new-instance v7, Lcom/oppo/widget/OppoOptionMenuBar$4;

    invoke-direct {v7, p0}, Lcom/oppo/widget/OppoOptionMenuBar$4;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    .line 1523
    const-wide/16 v7, 0xfa

    iput-wide v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 1592
    const/4 v7, 0x0

    iput v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 204
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0xc05041d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 205
    .local v3, defHeight:I
    move v5, v3

    .line 206
    .local v5, height:I
    sget-object v7, Loppo/R$styleable;->OppoOptionMenuBar:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 209
    .local v0, a:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_0

    .line 211
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    .line 214
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 217
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 219
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    const/4 v7, 0x5

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 227
    const/4 v7, 0x7

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 228
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 230
    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    .line 233
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 267
    :cond_0
    if-gtz v5, :cond_1

    .line 268
    move v5, v3

    .line 270
    :cond_1
    iput v5, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 276
    sget-object v7, Landroid/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 278
    .local v1, b:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_3

    .line 279
    const/16 v7, 0x24

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 280
    .local v6, windowBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 281
    invoke-super {p0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    .end local v6           #windowBackground:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->init(Landroid/content/Context;)V

    .line 292
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 299
    const-string v4, "com.oppo.filemanager"

    .line 300
    .local v4, fileManager:Ljava/lang/String;
    const-string v2, "com.oppo.alarmclock"

    .line 302
    .local v2, clock:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 304
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    .line 308
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoOptionMenuBar;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mPreviousClickUpTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoOptionMenuBar;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/Gallery;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoOptionMenuBar;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oppo/widget/OppoOptionMenuBar;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoOptionMenuBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoOptionMenuBar;)Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    return-void
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoOptionMenuBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    return-void
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoOptionMenuBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return v0
.end method

.method static synthetic access$902(Lcom/oppo/widget/OppoOptionMenuBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    return p1
.end method

.method private dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .parameter "isVisible"

    .prologue
    .line 1929
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1930
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1931
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 1930
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1933
    :cond_0
    return-void
.end method

.method private getDecorView()Landroid/view/View;
    .locals 4

    .prologue
    .line 1751
    const/4 v1, 0x0

    .line 1754
    .local v1, decorView:Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1755
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1760
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 1756
    :catch_0
    move-exception v2

    .line 1757
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getFadeAnimator(Landroid/widget/ImageView;Z)Landroid/animation/Animator;
    .locals 5
    .parameter "target"
    .parameter "fadeIn"

    .prologue
    const v3, 0x3e99999a

    const/4 v0, 0x0

    .line 1569
    if-eqz p2, :cond_0

    move v2, v3

    .line 1570
    .local v2, start:F
    :goto_0
    if-eqz p2, :cond_1

    .line 1572
    .local v0, end:F
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1573
    .local v1, fadeAnim:Landroid/animation/ValueAnimator;
    iget-wide v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1575
    new-instance v3, Lcom/oppo/widget/OppoOptionMenuBar$5;

    invoke-direct {v3, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$5;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1589
    return-object v1

    .end local v0           #end:F
    .end local v1           #fadeAnim:Landroid/animation/ValueAnimator;
    .end local v2           #start:F
    :cond_0
    move v2, v0

    .line 1569
    goto :goto_0

    .restart local v2       #start:F
    :cond_1
    move v0, v3

    .line 1570
    goto :goto_1
.end method

.method private getOffsetViews()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1840
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1842
    .local v1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1843
    .local v0, offsetView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1844
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1850
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 1851
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 1854
    :cond_1
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 1855
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1858
    :cond_2
    return-object v1
.end method

.method private inflateMajorOperationView()V
    .locals 3

    .prologue
    .line 545
    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/oppo/widget/OppoOptionMenuBarMajorOperationLayout;-><init>(Landroid/content/Context;Lcom/oppo/widget/OppoOptionMenuBar;)V

    iput-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    .line 547
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 549
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 551
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    return-void
.end method

.method private inflateMoreOperationView()V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    .line 316
    new-instance v0, Lcom/oppo/widget/OppoMenuInflater;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    .line 323
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMoreOperationView()V

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 332
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0d0413

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    .line 335
    return-void
.end method

.method private invalidateOptionMenuBar(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    const/4 v1, 0x2

    .line 1092
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1104
    :cond_1
    return-void
.end method

.method private refreshGallery()V
    .locals 4

    .prologue
    .line 841
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    if-nez v1, :cond_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 848
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 852
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 853
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 854
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setGalleryItems(Ljava/util/List;)V

    .line 855
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "OppoOptionMenuBar"

    const-string v2, "mMoreOpertationsGroup is null! If you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private refreshViews()V
    .locals 12

    .prologue
    .line 651
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 653
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v10, :cond_0

    .line 654
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 657
    :cond_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    if-eqz v10, :cond_1

    .line 658
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 661
    :cond_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoMenuItem;

    .line 662
    .local v1, e:Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v1}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 663
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    .end local v1           #e:Lcom/oppo/widget/OppoMenuItem;
    :cond_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 669
    .local v4, menuItemsSize:I
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 671
    .local v9, visibleMenuItemsSize:I
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-le v9, v10, :cond_5

    .line 672
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    .line 683
    :goto_1
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_4

    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    .line 684
    const/4 v10, 0x3

    iput v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 693
    :cond_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 695
    iget v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v10, :pswitch_data_0

    .line 750
    :goto_2
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v10, :cond_8

    .line 752
    new-instance v5, Lcom/oppo/widget/OppoMenuItemImpl;

    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/oppo/widget/OppoMenuItemImpl;-><init>(Landroid/content/Context;)V

    .line 754
    .local v5, moreMenuItem:Lcom/oppo/widget/OppoMenuItem;
    const v10, 0x7fffffff

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setItemId(I)Landroid/view/MenuItem;

    .line 755
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 756
    const/4 v10, 0x1

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 762
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v10

    invoke-interface {v5, v10}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 764
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 766
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 768
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .local v2, i:I
    :goto_3
    if-ge v2, v9, :cond_6

    .line 769
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItems:Ljava/util/List;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 674
    .end local v2           #i:I
    .end local v5           #moreMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :cond_5
    iput v9, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    .line 676
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    goto :goto_1

    .line 697
    :pswitch_0
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 705
    :pswitch_1
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 706
    .local v8, positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 707
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 714
    .end local v8           #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :pswitch_2
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 715
    .restart local v8       #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 716
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 717
    .local v6, negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 718
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 719
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 724
    .end local v6           #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v8           #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :pswitch_3
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 725
    .restart local v8       #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 726
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 727
    .restart local v6       #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 728
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 729
    .local v7, neutralMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 730
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 735
    .end local v6           #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v7           #neutralMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v8           #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :pswitch_4
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oppo/widget/OppoMenuItem;

    .line 736
    .restart local v8       #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v8}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 737
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/widget/OppoMenuItem;

    .line 738
    .restart local v6       #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v6}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 739
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/widget/OppoMenuItem;

    .line 740
    .restart local v7       #neutralMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v7}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    .line 741
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisibleMenuItems:Ljava/util/List;

    const/4 v11, 0x3

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoMenuItem;

    .line 742
    .restart local v5       #moreMenuItem:Lcom/oppo/widget/OppoMenuItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-direct {p0, v10, v5}, Lcom/oppo/widget/OppoOptionMenuBar;->setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V

    goto/16 :goto_2

    .line 777
    .end local v6           #negativeMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v7           #neutralMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .end local v8           #positiveMenuItem:Lcom/oppo/widget/OppoMenuItem;
    .restart local v2       #i:I
    :cond_6
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-nez v10, :cond_7

    .line 778
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 782
    :cond_7
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_8

    .line 784
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 791
    .end local v2           #i:I
    .end local v5           #moreMenuItem:Lcom/oppo/widget/OppoMenuItem;
    :cond_8
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 793
    .local v0, count:I
    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v10, :cond_9

    iget-boolean v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-nez v10, :cond_d

    .line 795
    :cond_9
    const/4 v10, 0x1

    if-ne v0, v10, :cond_a

    .line 796
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 797
    .local v1, e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 799
    .end local v1           #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_a
    const/4 v10, 0x1

    if-le v0, v10, :cond_f

    .line 800
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    if-ge v2, v0, :cond_f

    .line 801
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 803
    .restart local v1       #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    if-nez v2, :cond_b

    .line 804
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 800
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 805
    :cond_b
    add-int/lit8 v10, v0, -0x1

    if-ne v2, v10, :cond_c

    .line 806
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 809
    :cond_c
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 816
    .end local v1           #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    .end local v2           #i:I
    :cond_d
    const/4 v10, 0x1

    if-ne v0, v10, :cond_e

    .line 817
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 818
    .restart local v1       #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v10}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 820
    .end local v1           #e:Lcom/oppo/widget/OppoOptionMenuBarItem;
    :cond_e
    const/4 v10, 0x2

    if-ne v0, v10, :cond_10

    .line 821
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 822
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 835
    :cond_f
    :goto_8
    return-void

    .line 823
    :cond_10
    const/4 v10, 0x3

    if-ne v0, v10, :cond_11

    .line 824
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 825
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 826
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 827
    :cond_11
    const/4 v10, 0x4

    if-ne v0, v10, :cond_f

    .line 828
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 829
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 830
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    .line 831
    iget-object v10, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v11, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v10, v11}, Lcom/oppo/widget/OppoOptionMenuBar;->setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 695
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private resetPositionToDefault()V
    .locals 3

    .prologue
    .line 2005
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v1, :cond_1

    .line 2006
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v0

    .line 2008
    .local v0, height:I
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->onOffsetToDefault(I)V

    .line 2010
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    .line 2012
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2013
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2016
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v1, :cond_1

    .line 2017
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2020
    .end local v0           #height:I
    :cond_1
    return-void
.end method

.method private resolveKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1880
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1881
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 1882
    .local v0, canceled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    .line 1884
    .local v2, longPressed:Z
    const-string v4, "OppoOptionMenuBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "on key up...enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",scrolling="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",expanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "canceled ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "long press="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez v0, :cond_5

    iget v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    if-nez v4, :cond_5

    .line 1891
    :cond_1
    const/4 v4, 0x4

    if-ne v4, v1, :cond_3

    .line 1892
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-eqz v4, :cond_2

    .line 1916
    :goto_0
    return v3

    .line 1894
    :cond_2
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_3

    .line 1896
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 1901
    :cond_3
    const/16 v4, 0x52

    if-ne v4, v1, :cond_5

    .line 1902
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1904
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    goto :goto_0

    .line 1907
    :cond_4
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1909
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    goto :goto_0

    .line 1916
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private scrollView(Z)V
    .locals 5
    .parameter "isScrollDown"

    .prologue
    const/4 v4, 0x0

    .line 1599
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 1748
    :goto_0
    return-void

    .line 1604
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getMoreOptionMenuBarHeight()I

    move-result v1

    .line 1606
    .local v1, offsetHeight:I
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v4, v2, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1607
    .local v0, offsetAnim:Landroid/animation/ValueAnimator;
    iget-wide v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mScrollAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1608
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 1610
    if-eqz p1, :cond_1

    .line 1611
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1637
    :goto_1
    iput v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->offsetedDistance:I

    .line 1638
    new-instance v2, Lcom/oppo/widget/OppoOptionMenuBar$7;

    invoke-direct {v2, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$7;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1659
    new-instance v2, Lcom/oppo/widget/OppoOptionMenuBar$8;

    invoke-direct {v2, p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar$8;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1738
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1627
    :cond_1
    new-instance v2, Lcom/oppo/widget/OppoOptionMenuBar$6;

    invoke-direct {v2, p0}, Lcom/oppo/widget/OppoOptionMenuBar$6;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1
.end method

.method private setItemViewAttrs(Lcom/oppo/widget/OppoOptionMenuBarItem;Lcom/oppo/widget/OppoMenuItem;)V
    .locals 4
    .parameter "itemView"
    .parameter "item"

    .prologue
    .line 881
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemId(I)V

    .line 882
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 884
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    :cond_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    .line 890
    :goto_0
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setEnabled(Z)V

    .line 891
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->isVisible()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemVisible(Z)V

    .line 893
    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getWeight()F

    move-result v0

    .line 899
    .local v0, layoutWeight:F
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 901
    .local v1, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    if-nez v2, :cond_2

    invoke-interface {p2}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_2

    .line 902
    iget v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationCount:I

    packed-switch v2, :pswitch_data_0

    .line 919
    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 926
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 931
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpertionList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    return-void

    .line 887
    .end local v0           #layoutWeight:F
    .end local v1           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 904
    .restart local v0       #layoutWeight:F
    .restart local v1       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_0
    const/high16 v2, 0x408c

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 909
    :pswitch_1
    const/high16 v2, 0x400c

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 914
    :pswitch_2
    const v2, 0x3fb72372

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 923
    :cond_2
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 902
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setViewBackground(Lcom/oppo/widget/OppoOptionMenuBarItem;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "item"
    .parameter "bg"

    .prologue
    .line 871
    if-eqz p1, :cond_0

    .line 872
    if-eqz p2, :cond_1

    .line 873
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setupDecorMask()V
    .locals 3

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    .line 495
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v1, 0xc02046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    .line 498
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    new-instance v1, Lcom/oppo/widget/OppoOptionMenuBar$3;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoOptionMenuBar$3;-><init>(Lcom/oppo/widget/OppoOptionMenuBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 524
    :cond_2
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "decor view is available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 526
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "decor mask is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1921
    return-void
.end method

.method public collapseMenu()V
    .locals 0

    .prologue
    .line 2183
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 2184
    return-void
.end method

.method public copyFrom(Lcom/oppo/widget/OppoOptionMenuBar;Z)V
    .locals 6
    .parameter "menuBar"
    .parameter "refreshMore"

    .prologue
    .line 1314
    iput-boolean p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1315
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V

    .line 1316
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMenuItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorHopeCount()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1317
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOptionMenuBarHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationMenuBarHeight(I)V

    .line 1318
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1319
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1320
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1321
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1325
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget-object v5, p1, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1328
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->getMajorOperationTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1329
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    .line 1330
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1332
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isRefreshGallery:Z

    .line 1333
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1863
    iget-boolean v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    if-nez v1, :cond_1

    .line 1864
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1873
    :cond_0
    :goto_0
    return v0

    .line 1866
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1867
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1873
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandMenu()V
    .locals 0

    .prologue
    .line 2175
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollUp()V

    .line 2176
    return-void
.end method

.method public findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;
    .locals 4
    .parameter "id"

    .prologue
    .line 946
    const/4 v2, 0x0

    .line 948
    .local v2, item:Lcom/oppo/widget/OppoMenuItem;
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 949
    iget-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 950
    .local v0, e:Lcom/oppo/widget/OppoMenuItem;
    invoke-interface {v0}, Lcom/oppo/widget/OppoMenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 951
    move-object v2, v0

    goto :goto_0

    .line 956
    .end local v0           #e:Lcom/oppo/widget/OppoMenuItem;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1340
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getClickDuration()J
    .locals 2

    .prologue
    .line 2203
    iget-wide v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    return-wide v0
.end method

.method public getItemDefaultBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemLeftBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMiddleBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemMoreIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemRightBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorHopeCount()I
    .locals 1

    .prologue
    .line 1269
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    return v0
.end method

.method public getMajorMenuItemDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMajorOperationTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMajorOperationVisibility()I
    .locals 1

    .prologue
    .line 1384
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    return v0
.end method

.method public getMajorOperationsGroup()Landroid/view/View;
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOperationsLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMajorOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1216
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    goto :goto_0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 1274
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method public getMoreOptionMenuBarHeight()I
    .locals 1

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateOptionMenuBar()V
    .locals 2

    .prologue
    .line 1085
    const-wide/16 v0, 0xa

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1086
    return-void
.end method

.method public isCustomized()Z
    .locals 1

    .prologue
    .line 1304
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1446
    invoke-super {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isMoreOperaionsEnabled()Z
    .locals 1

    .prologue
    .line 2140
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    return v0
.end method

.method public isMoreOperationGroupScrolling()Z
    .locals 1

    .prologue
    .line 2136
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    return v0
.end method

.method public isMoreOperationsGroupExpanded()Z
    .locals 1

    .prologue
    .line 2144
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v3

    .line 1452
    .local v3, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1456
    .local v0, e:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1457
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, -0x1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1461
    .end local v0           #e:Landroid/view/View;
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1484
    iget-boolean v4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v4, :cond_1

    .line 1485
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 1486
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1489
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1490
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 341
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    if-nez v0, :cond_1

    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isInflated:Z

    .line 343
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->inflateMajorOperationView()V

    .line 348
    const v0, 0xc020468

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 349
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    const v0, 0xc020469

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 352
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    const v0, 0xc02046a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 355
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v0, 0xc02046b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarItem;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    .line 358
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    const v0, 0xc02046c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    .line 362
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 365
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0xc02046d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoOptionMenuBarGallery;

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    .line 368
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-nez v0, :cond_0

    .line 369
    const-string v0, "OppoOptionMenuBar"

    const-string v1, "Can\'t find the More Operation View in DecorViw when init;if you want to use OppoOptionMenuBar,please define oppo theme styles in AndroidManifest.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    new-instance v0, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    .line 374
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryAdapter:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mGalleryItemClickListener:Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter;->setOnGalleryItemClickListener(Lcom/oppo/widget/OppoOptionMenuBarGalleryAdapter$OnGalleryItemClickListener;)V

    .line 399
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 4
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x0

    .line 2024
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on gain focus ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2027
    if-eqz p1, :cond_1

    .line 2028
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2029
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 2048
    :cond_0
    :goto_0
    return-void

    .line 2043
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2045
    iput-object v3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 22
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1961
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 1963
    .local v14, count:I
    const/16 v18, 0x0

    .line 1964
    .local v18, maxHeight:I
    const/16 v19, 0x0

    .line 1965
    .local v19, maxWidth:I
    const/4 v13, 0x0

    .line 1967
    .local v13, childState:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 1969
    .local v15, height:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 1970
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1971
    .local v3, child:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 1973
    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->isFillLayoutSpace:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1975
    const/high16 v20, 0x4000

    .line 1976
    .local v20, mode:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    sub-int v21, v15, v2

    .line 1977
    .local v21, resizeHeight:I
    move/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1979
    .local v6, customHeightMeasureSpec:I
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1984
    .end local v6           #customHeightMeasureSpec:I
    .end local v20           #mode:I
    .end local v21           #resizeHeight:I
    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout$LayoutParams;

    .line 1985
    .local v17, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1987
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v17

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1989
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v13, v2}, Lcom/oppo/widget/OppoOptionMenuBar;->combineMeasuredStates(II)I

    move-result v13

    .line 1969
    .end local v17           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1981
    :cond_1
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    .line 1993
    .end local v3           #child:Landroid/view/View;
    :cond_2
    move/from16 v0, v19

    move/from16 v1, p1

    invoke-static {v0, v1, v13}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v13, 0x10

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Lcom/oppo/widget/OppoOptionMenuBar;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1998
    return-void
.end method

.method protected onOffset(I)V
    .locals 8
    .parameter "offset"

    .prologue
    .line 1769
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v5

    .line 1771
    .local v5, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1772
    .local v1, e:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1777
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 1779
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v7, 0x50

    if-ne v6, v7, :cond_1

    .line 1780
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v6, p1

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1786
    :goto_1
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 1794
    const/4 v4, 0x0

    .line 1795
    .local v4, screen:Landroid/view/View;
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    const v7, 0x1020002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1796
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1797
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .end local v4           #screen:Landroid/view/View;
    check-cast v4, Landroid/view/View;

    .line 1799
    .restart local v4       #screen:Landroid/view/View;
    :cond_0
    if-eqz v4, :cond_2

    .line 1800
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1782
    .end local v0           #content:Landroid/view/View;
    .end local v4           #screen:Landroid/view/View;
    :cond_1
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, p1

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 1802
    .restart local v0       #content:Landroid/view/View;
    .restart local v4       #screen:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1806
    .end local v0           #content:Landroid/view/View;
    .end local v4           #screen:Landroid/view/View;
    :cond_3
    const/4 v6, -0x1

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1812
    .end local v1           #e:Landroid/view/View;
    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1813
    return-void
.end method

.method protected onOffsetToDefault(I)V
    .locals 6
    .parameter "offset"

    .prologue
    .line 1816
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->getOffsetViews()Ljava/util/List;

    move-result-object v3

    .line 1818
    .local v3, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1819
    .local v0, e:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1824
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1826
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v5, 0x50

    if-ne v4, v5, :cond_0

    .line 1827
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, p1

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1829
    :cond_0
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p1

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 1836
    .end local v0           #e:Landroid/view/View;
    .end local v2           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1837
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 2064
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on change visibility ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2067
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    .line 2069
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2070
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    .line 2074
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on window has focus ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    if-nez p1, :cond_1

    .line 2076
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    if-nez v0, :cond_0

    .line 2077
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->resetPositionToDefault()V

    .line 2083
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2084
    return-void

    .line 2080
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isStepIntoNewActivity:Z

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 2051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2053
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    return-void
.end method

.method public removeOnMenuVisibilityListener(Lcom/oppo/widget/OppoOptionMenuBar$OnMenuVisibilityListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1925
    return-void
.end method

.method public setAllMenuItemsEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1044
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1045
    .local v0, e:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1046
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1049
    .end local v0           #e:Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setAllMenuItemsIcon(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1011
    .local p1, icons:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/Drawable;>;"
    if-eqz p1, :cond_0

    .line 1012
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1014
    .local v1, size:I
    if-lez v1, :cond_0

    .line 1015
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1016
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1015
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1020
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public setAllMenuItemsTitle(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 980
    .local p1, titles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    .line 981
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 983
    .local v1, size:I
    if-lez v1, :cond_0

    .line 984
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 985
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/widget/OppoMenuItem;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 984
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "drawable"

    .prologue
    .line 1107
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 1112
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 1113
    .local v5, rect:Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 1114
    .local v0, hasPadding:Z
    const/4 v2, 0x0

    .line 1115
    .local v2, paddingLeft:I
    const/4 v4, 0x0

    .line 1116
    .local v4, paddingTop:I
    const/4 v3, 0x0

    .line 1117
    .local v3, paddingRight:I
    const/4 v1, 0x0

    .line 1119
    .local v1, paddingBottom:I
    if-eqz p1, :cond_0

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1120
    const/4 v0, 0x1

    .line 1121
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1122
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 1123
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 1124
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 1128
    :cond_0
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1130
    if-eqz v0, :cond_1

    .line 1131
    iget-object v6, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2, v4, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1136
    .end local v0           #hasPadding:Z
    .end local v1           #paddingBottom:I
    .end local v2           #paddingLeft:I
    .end local v3           #paddingRight:I
    .end local v4           #paddingTop:I
    .end local v5           #rect:Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method public setClickDuration(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 2192
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 2193
    iput-wide p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mClickDuration:J

    .line 2195
    :cond_0
    return-void
.end method

.method public setEnabled(Lcom/oppo/widget/OppoOptionMenuBar;)V
    .locals 1
    .parameter "menuBar"

    .prologue
    .line 1309
    invoke-virtual {p1}, Lcom/oppo/widget/OppoOptionMenuBar;->isEnabled()Z

    move-result v0

    invoke-super {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1310
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1426
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1428
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1438
    const-wide/16 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->invalidateOptionMenuBar(J)V

    .line 1441
    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 0
    .parameter "enabled"
    .parameter "invalidate"

    .prologue
    .line 1344
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1345
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setAllMenuItemsEnabled(Z)V

    .line 1352
    if-eqz p2, :cond_0

    .line 1353
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1355
    :cond_0
    return-void
.end method

.method public setFlowMenuFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2149
    iput-boolean p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isFlowMenu:Z

    .line 2150
    return-void
.end method

.method public setItemMoreIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 1394
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 1395
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1397
    :cond_0
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 1145
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1146
    return-void
.end method

.method public setMajorMenuItemBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "bgDefault"
    .parameter "bgLeft"
    .parameter "bgMiddle"
    .parameter "bgRight"

    .prologue
    const/4 v3, 0x0

    .line 1150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCustomized:Z

    .line 1152
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1160
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemDefaultBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1161
    iput-object p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemLeftBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1162
    iput-object p3, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMiddleBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1163
    iput-object p4, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemRightBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 1176
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 1178
    return-void
.end method

.method public setMajorMenuItemDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    .line 1415
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1418
    :cond_0
    return-void
.end method

.method public setMajorOperationCount(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 1187
    return-void
.end method

.method public setMajorOperationMenuBarHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 1195
    if-lez p1, :cond_0

    .line 1196
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    .line 1198
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1199
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1201
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1204
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setMajorOperationTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 1239
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V

    .line 1240
    return-void
.end method

.method public setMajorOperationTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 1250
    if-eqz p1, :cond_0

    .line 1251
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOpreationTextColor:Landroid/content/res/ColorStateList;

    .line 1253
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemPositive:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1254
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNegative:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1255
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemNeutral:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1256
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mItemMore:Lcom/oppo/widget/OppoOptionMenuBarItem;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoOptionMenuBarItem;->setItemTitleColor(Landroid/content/res/ColorStateList;)V

    .line 1258
    :cond_0
    return-void
.end method

.method public setMajorOperationVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1364
    iput p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    .line 1366
    iget v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    if-eqz v0, :cond_0

    .line 1367
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationGroupScrolling:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isMoreOperationsGroupExpanded:Z

    if-eqz v0, :cond_0

    .line 1369
    invoke-virtual {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->startScrollDown()V

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorOperationsLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mVisiblity:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1375
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1376
    return-void
.end method

.method public setMenuItemEnabled(IZ)V
    .locals 1
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 1029
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1031
    .local v0, item:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1032
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1034
    :cond_0
    return-void
.end method

.method public setMenuItemIcon(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "id"
    .parameter "icon"

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1000
    .local v0, item:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1001
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1003
    :cond_0
    return-void
.end method

.method public setMenuItemTitle(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "id"
    .parameter "title"

    .prologue
    .line 967
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 969
    .local v0, item:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 970
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 972
    :cond_0
    return-void
.end method

.method public setMenuItemVisible(IZ)V
    .locals 1
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 1058
    invoke-virtual {p0, p1}, Lcom/oppo/widget/OppoOptionMenuBar;->findMenuItem(I)Lcom/oppo/widget/OppoMenuItem;

    move-result-object v0

    .line 1060
    .local v0, item:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1061
    invoke-interface {v0, p2}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1063
    :cond_0
    return-void
.end method

.method public setMenuItems(I)V
    .locals 1
    .parameter "menuRes"

    .prologue
    .line 572
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(II)V

    .line 573
    return-void
.end method

.method public setMenuItems(II)V
    .locals 2
    .parameter "menuRes"
    .parameter "majorOperationCount"

    .prologue
    .line 576
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 577
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 579
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 580
    return-void
.end method

.method public setMenuItems(IIZ)V
    .locals 2
    .parameter "menuRes"
    .parameter "majorOperationCount"
    .parameter "invalidate"

    .prologue
    .line 612
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1, p1}, Lcom/oppo/widget/OppoMenuInflater;->inflate(I)V

    .line 613
    iget-object v1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuInflater:Lcom/oppo/widget/OppoMenuInflater;

    invoke-virtual {v1}, Lcom/oppo/widget/OppoMenuInflater;->getMenuItems()Ljava/util/List;

    move-result-object v0

    .line 615
    .local v0, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    invoke-virtual {p0, v0, p2, p3}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 616
    return-void
.end method

.method public setMenuItems(IZ)V
    .locals 1
    .parameter "menuRes"
    .parameter "invalidate"

    .prologue
    .line 608
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(IIZ)V

    .line 609
    return-void
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;I)V

    .line 584
    return-void
.end method

.method public setMenuItems(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "majorOperationCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 590
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 591
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 596
    :goto_0
    if-eqz p1, :cond_0

    .line 597
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 602
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 605
    :cond_0
    return-void

    .line 593
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;IZ)V
    .locals 1
    .parameter
    .parameter "majorOperationCount"
    .parameter "invalidate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    .line 626
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 627
    iput p2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    .line 632
    :goto_0
    if-eqz p1, :cond_0

    .line 633
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    .line 639
    if-eqz p3, :cond_0

    .line 640
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshViews()V

    .line 643
    :cond_0
    return-void

    .line 629
    :cond_1
    iput v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMajorHopeCount:I

    goto :goto_0
.end method

.method public setMenuItems(Ljava/util/List;Z)V
    .locals 1
    .parameter
    .parameter "invalidate"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oppo/widget/OppoMenuItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/oppo/widget/OppoMenuItem;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/widget/OppoOptionMenuBar;->setMenuItems(Ljava/util/List;IZ)V

    .line 620
    return-void
.end method

.method public setMenuItemsVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 1071
    iget-object v2, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMenuItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMenuItem;

    .line 1072
    .local v0, e:Lcom/oppo/widget/OppoMenuItem;
    if-eqz v0, :cond_0

    .line 1073
    invoke-interface {v0, p1}, Lcom/oppo/widget/OppoMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1076
    .end local v0           #e:Lcom/oppo/widget/OppoMenuItem;
    :cond_1
    return-void
.end method

.method public setOnOptionsItemSelectedListener(Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1493
    if-eqz p1, :cond_0

    .line 1494
    iput-object p1, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mOptionsItemSelectedListener:Lcom/oppo/widget/OppoOptionMenuBar$OnOptionsItemSelectedListener;

    .line 1496
    :cond_0
    return-void
.end method

.method protected startScrollDown()V
    .locals 1

    .prologue
    .line 1563
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1564
    return-void
.end method

.method protected startScrollUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1526
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 1527
    invoke-virtual {p0}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 1531
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1532
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->setupDecorMask()V

    .line 1535
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isViewPager:Z

    if-eqz v0, :cond_1

    .line 1536
    invoke-direct {p0}, Lcom/oppo/widget/OppoOptionMenuBar;->refreshGallery()V

    .line 1539
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1540
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mDecorMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1543
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oppo/widget/OppoOptionMenuBar;->dispatchMenuVisibilityChanged(Z)V

    .line 1549
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_3

    .line 1550
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1554
    :cond_3
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    if-eqz v0, :cond_4

    .line 1555
    iget-object v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->mMoreOpertationsGroup:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1559
    :cond_4
    invoke-direct {p0, v1}, Lcom/oppo/widget/OppoOptionMenuBar;->scrollView(Z)V

    .line 1560
    return-void
.end method

.method public unRegister()V
    .locals 3

    .prologue
    .line 2057
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoOptionMenuBar;->isCurrentTopVisible:Z

    .line 2059
    const-string v0, "OppoOptionMenuBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    return-void
.end method
