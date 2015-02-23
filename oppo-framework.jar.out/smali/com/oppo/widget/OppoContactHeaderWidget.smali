.class public Lcom/oppo/widget/OppoContactHeaderWidget;
.super Landroid/widget/FrameLayout;
.source "OppoContactHeaderWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;,
        Lcom/oppo/widget/OppoContactHeaderWidget$ContactQuery;,
        Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;
    }
.end annotation


# static fields
.field private static final CONTACT_LOOKUP_ID_COLUMN_INDEX:I = 0x0

.field protected static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field private static final EMAIL_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final PHONE_LOOKUP_CONTACT_ID_COLUMN_INDEX:I = 0x0

.field private static final PHONE_LOOKUP_CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x1

.field protected static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OppoContactHeaderWidget"

.field private static final TOKEN_CONTACT_INFO:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final WIDGET_CARD:I = 0x0

.field private static final WIDGET_SHORT_INTEREST:I = 0x1


# instance fields
.field private mAggregateBadge:Landroid/view/View;

.field private mContactButton:Landroid/widget/ImageView;

.field private mContactUri:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

.field private mDisplayNameView:Landroid/widget/TextView;

.field private mDisplayPhNumberOrGroups:Ljava/lang/String;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mGroupsType:Ljava/lang/String;

.field private mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

.field private mNameIsExisted:Z

.field private mNewBuildButton:Landroid/widget/ImageView;

.field private mNoPhotoResource:I

.field private mPhoneButton:Landroid/widget/ImageView;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneticNameView:Landroid/widget/TextView;

.field private mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

.field private mPresenceView:Landroid/widget/ImageView;

.field private mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

.field private mStarredView:Landroid/widget/CheckBox;

.field private mStatusAttributionView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;

.field private mWidgetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/widget/OppoContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 217
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    const-string v1, "lookup"

    aput-object v1, v0, v3

    sput-object v0, Lcom/oppo/widget/OppoContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 227
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/oppo/widget/OppoContactHeaderWidget;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoContactHeaderWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    .line 246
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-object v5, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 83
    iput-object v5, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayPhNumberOrGroups:Ljava/lang/String;

    .line 84
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNameIsExisted:Z

    .line 91
    iput-object v5, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 248
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 250
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 252
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0xc09040f

    invoke-virtual {v0, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 254
    const v4, 0xc020421

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    .line 255
    const v4, 0xc020413

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    .line 256
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 258
    const v4, 0xc020414

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    .line 259
    const v4, 0xc020415

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    .line 260
    const v4, 0xc020416

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oppo/widget/OppoQuickContactBadge;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    .line 261
    const v4, 0xc020417

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    .line 262
    const v4, 0xc020422

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    .line 263
    const v4, 0xc020418

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    .line 264
    const v4, 0xc020419

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    .line 265
    const v4, 0xc02041a

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    .line 266
    const v4, 0xc02041b

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    .line 267
    const v4, 0xc02041c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

    .line 270
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 271
    .local v1, now:J
    long-to-int v4, v1

    and-int/lit8 v3, v4, 0xf

    .line 272
    .local v3, num:I
    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    .line 274
    const v4, 0xc080403

    iput v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    .line 283
    :goto_0
    new-instance v4, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    iget-object v5, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v4, p0, v5}, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;-><init>(Lcom/oppo/widget/OppoContactHeaderWidget;Landroid/content/ContentResolver;)V

    iput-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    .line 285
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    return-void

    .line 275
    :cond_0
    const/16 v4, 0xe

    if-ge v3, v4, :cond_1

    .line 277
    const v4, 0xc080421

    iput v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    goto :goto_0

    .line 280
    :cond_1
    const v4, 0xc080422

    iput v4, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/oppo/widget/OppoContactHeaderWidget;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/oppo/widget/OppoContactHeaderWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNameIsExisted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoContactHeaderWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoContactHeaderWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoContactHeaderWidget;)Lcom/oppo/widget/OppoQuickContactBadge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    return-object v0
.end method

.method private loadContactPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "photoId"
    .parameter "options"

    .prologue
    .line 813
    const/4 v7, 0x0

    .line 814
    .local v7, photoCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 817
    .local v6, photoBm:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 820
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 822
    .local v8, photoData:[B
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 825
    .end local v8           #photoData:[B
    :cond_0
    if-eqz v7, :cond_1

    .line 826
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_1
    return-object v6

    .line 825
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 826
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "options"

    .prologue
    .line 834
    iget v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    if-nez v0, :cond_0

    .line 835
    const/4 v0, 0x0

    .line 838
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNoPhotoResource:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private performContactButtonClick()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onContactButtonClick(Landroid/view/View;)V

    .line 166
    :cond_0
    return-void
.end method

.method private performDisplayNameClick()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onDisplayNameClick(Landroid/view/View;)V

    .line 148
    :cond_0
    return-void
.end method

.method private performNewBuildButtonClick()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onNewBuildButtonClick(Landroid/view/View;)V

    .line 154
    :cond_0
    return-void
.end method

.method private performPhoneButtonClick()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onPhoneButtonClick(Landroid/view/View;)V

    .line 160
    :cond_0
    return-void
.end method

.method private performPhotoClick()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onPhotoClick(Landroid/view/View;)V

    .line 142
    :cond_0
    return-void
.end method

.method private performStarredClick()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-interface {v0, v1}, Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;->onStarredViewClick(Landroid/view/View;)V

    .line 172
    :cond_0
    return-void
.end method

.method private startContactQuery(Landroid/net/Uri;)V
    .locals 8
    .parameter "contactUri"

    .prologue
    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/oppo/widget/OppoContactHeaderWidget$ContactQuery;->COLUMNS:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void
.end method


# virtual methods
.method protected bindContactInfo(Landroid/database/Cursor;)V
    .locals 26
    .parameter "c"

    .prologue
    .line 666
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 672
    .local v12, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 673
    .local v10, contactId:J
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 674
    .local v16, lookupKey:Ljava/lang/String;
    const/16 v17, 0x0

    .line 676
    .local v17, phoneticName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getWidgetType()I

    move-result v4

    if-nez v4, :cond_6

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getGroupsType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayPhNumberOrGroups:Ljava/lang/String;

    .line 681
    :cond_2
    :goto_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayPhNumberOrGroups:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v5}, Lcom/oppo/widget/OppoContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 683
    const/4 v4, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v23, 0x1

    .line 684
    .local v23, starred:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 687
    const/4 v4, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/oppo/widget/OppoContactHeaderWidget;->loadContactPhoto(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 688
    .local v18, photoBitmap:Landroid/graphics/Bitmap;
    if-nez v18, :cond_3

    .line 689
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/oppo/widget/OppoContactHeaderWidget;->loadPlaceholderPhoto(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 691
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 695
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 696
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 697
    .local v20, presence:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    invoke-static/range {v20 .. v20}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    .end local v20           #presence:I
    :goto_3
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 705
    .local v24, status:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 709
    const/16 v25, 0x0

    .line 711
    .local v25, timestamp:Ljava/lang/CharSequence;
    const/4 v4, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 712
    const/4 v4, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 716
    .local v2, date:J
    const/high16 v8, 0x4

    .line 718
    .local v8, flags:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    invoke-static/range {v2 .. v8}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v25

    .line 722
    .end local v2           #date:J
    .end local v8           #flags:I
    :cond_4
    const/4 v14, 0x0

    .line 724
    .local v14, label:Ljava/lang/String;
    const/16 v4, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 725
    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 726
    .local v21, resPackage:Ljava/lang/String;
    const/16 v4, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 729
    .local v15, labelResource:I
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 742
    .local v22, resources:Landroid/content/res/Resources;
    :goto_4
    if-eqz v22, :cond_5

    .line 744
    :try_start_0
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 753
    .end local v15           #labelResource:I
    .end local v21           #resPackage:Ljava/lang/String;
    .end local v22           #resources:Landroid/content/res/Resources;
    :cond_5
    :goto_5
    if-eqz v25, :cond_a

    if-eqz v14, :cond_a

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0xc04040a

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v25, v6, v7

    const/4 v7, 0x1

    aput-object v14, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 765
    .local v9, attribution:Ljava/lang/CharSequence;
    :goto_6
    if-eqz v9, :cond_d

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 678
    .end local v9           #attribution:Ljava/lang/CharSequence;
    .end local v14           #label:Ljava/lang/String;
    .end local v18           #photoBitmap:Landroid/graphics/Bitmap;
    .end local v23           #starred:Z
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #timestamp:Ljava/lang/CharSequence;
    :cond_6
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->getWidgetType()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayPhNumberOrGroups:Ljava/lang/String;

    goto/16 :goto_1

    .line 683
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 700
    .restart local v18       #photoBitmap:Landroid/graphics/Bitmap;
    .restart local v23       #starred:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    .line 732
    .restart local v14       #label:Ljava/lang/String;
    .restart local v15       #labelResource:I
    .restart local v21       #resPackage:Ljava/lang/String;
    .restart local v24       #status:Ljava/lang/String;
    .restart local v25       #timestamp:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 734
    .local v19, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v22

    .restart local v22       #resources:Landroid/content/res/Resources;
    goto :goto_4

    .line 735
    .end local v22           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v13

    .line 736
    .local v13, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "OppoContactHeaderWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contact status update resource package not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v22, 0x0

    .restart local v22       #resources:Landroid/content/res/Resources;
    goto/16 :goto_4

    .line 745
    .end local v13           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v13

    .line 746
    .local v13, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "OppoContactHeaderWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contact status update resource not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 756
    .end local v13           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v15           #labelResource:I
    .end local v21           #resPackage:Ljava/lang/String;
    .end local v22           #resources:Landroid/content/res/Resources;
    :cond_a
    if-nez v25, :cond_b

    if-eqz v14, :cond_b

    .line 757
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0xc04040b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 759
    .end local v9           #attribution:Ljava/lang/CharSequence;
    :cond_b
    if-eqz v25, :cond_c

    .line 760
    move-object/from16 v9, v25

    .restart local v9       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 762
    .end local v9           #attribution:Ljava/lang/CharSequence;
    :cond_c
    const/4 v9, 0x0

    .restart local v9       #attribution:Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 769
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 772
    .end local v9           #attribution:Ljava/lang/CharSequence;
    .end local v14           #label:Ljava/lang/String;
    .end local v25           #timestamp:Ljava/lang/CharSequence;
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusAttributionView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public bindFromContactLookupUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "contactLookupUri"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 604
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoContactHeaderWidget;->startContactQuery(Landroid/net/Uri;)V

    .line 605
    return-void
.end method

.method public bindFromContactUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 614
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 616
    .local v0, contactId:J
    invoke-direct {p0, p1}, Lcom/oppo/widget/OppoContactHeaderWidget;->startContactQuery(Landroid/net/Uri;)V

    .line 617
    return-void
.end method

.method public bindFromEmail(Ljava/lang/String;)V
    .locals 8
    .parameter "emailAddress"

    .prologue
    const/4 v5, 0x0

    .line 627
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    const/4 v1, 0x2

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/oppo/widget/OppoContactHeaderWidget;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    return-void
.end method

.method public bindFromPhoneNumber(Ljava/lang/String;)V
    .locals 8
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    .line 640
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mQueryHandler:Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;

    const/4 v1, 0x1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/oppo/widget/OppoContactHeaderWidget;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public enableClickListeners()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method

.method public getGroupsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mGroupsType:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetType()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mWidgetType:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 779
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 810
    :goto_0
    :pswitch_0
    return-void

    .line 781
    :pswitch_1
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performStarredClick()V

    goto :goto_0

    .line 786
    :pswitch_2
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performPhotoClick()V

    goto :goto_0

    .line 791
    :pswitch_3
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performDisplayNameClick()V

    goto :goto_0

    .line 796
    :pswitch_4
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performNewBuildButtonClick()V

    goto :goto_0

    .line 801
    :pswitch_5
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performPhoneButtonClick()V

    goto :goto_0

    .line 806
    :pswitch_6
    invoke-direct {p0}, Lcom/oppo/widget/OppoContactHeaderWidget;->performContactButtonClick()V

    goto :goto_0

    .line 779
    :pswitch_data_0
    .packed-switch 0xc020415
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setContactHeaderListener(Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mListener:Lcom/oppo/widget/OppoContactHeaderWidget$ContactHeaderListener;

    .line 136
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 449
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oppo/widget/OppoContactHeaderWidget;->setContactUri(Landroid/net/Uri;Z)V

    .line 450
    return-void
.end method

.method public setContactUri(Landroid/net/Uri;Z)V
    .locals 0
    .parameter "uri"
    .parameter "sendToFastrack"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 460
    if-eqz p2, :cond_0

    .line 463
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"
    .parameter "phoneticName"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "displayName"
    .parameter "phoneticName"
    .parameter "numbetOrGroups"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneticNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    :cond_2
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 1
    .parameter "excludeMimes"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 594
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v0, p1}, Lcom/oppo/widget/OppoQuickContactBadge;->setExcludeMimes([Ljava/lang/String;)V

    .line 595
    return-void
.end method

.method public setGroupsType(Ljava/lang/String;)V
    .locals 0
    .parameter "groupsType"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mGroupsType:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1
    .parameter "telenumber"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mDispTelephoneNumberOrGroup:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    return-void
.end method

.method public setPhoto(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    return-void
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    return-void
.end method

.method public setPresence(I)V
    .locals 2
    .parameter "presence"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPresenceView:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    return-void
.end method

.method public setShowExistNumberButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 518
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    const v1, 0xc080423

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 522
    return-void
.end method

.method public setShowSearchContactButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 509
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    return-void
.end method

.method public setShowUnkownNumberButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    const v1, 0xc080423

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 532
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    const v1, 0xc080424

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 533
    return-void
.end method

.method public setSocialSnippet(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "snippet"

    .prologue
    .line 578
    if-nez p1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStared(Z)V
    .locals 1
    .parameter "starred"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 432
    return-void
.end method

.method public setWidgetType(I)V
    .locals 0
    .parameter "iWidgetType"

    .prologue
    .line 392
    iput p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mWidgetType:I

    .line 393
    return-void
.end method

.method public showAggregateBadge(Z)V
    .locals 2
    .parameter "showBagde"

    .prologue
    .line 361
    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mAggregateBadge:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 362
    return-void

    .line 361
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showButton(ZZ)V
    .locals 4
    .parameter "showNewBuildButton"
    .parameter "showPhoneButton"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 380
    iget-object v3, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    return-void

    :cond_0
    move v0, v2

    .line 380
    goto :goto_0

    :cond_1
    move v1, v2

    .line 381
    goto :goto_1
.end method

.method public showStar(Z)V
    .locals 2
    .parameter "showStar"

    .prologue
    .line 370
    iget-object v1, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mStarredView:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    return-void

    .line 370
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public wipeClean()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 651
    iput-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mContactUri:Landroid/net/Uri;

    .line 652
    iput-object v0, p0, Lcom/oppo/widget/OppoContactHeaderWidget;->mExcludeMimes:[Ljava/lang/String;

    .line 653
    return-void
.end method
