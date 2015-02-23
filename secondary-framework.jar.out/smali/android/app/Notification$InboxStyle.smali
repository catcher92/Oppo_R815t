.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# instance fields
.field private mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2116
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 2114
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 2117
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 2119
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 2114
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 2120
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 2121
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 13
    .annotation build Landroid/annotation/OppoHook;
        level = .enum Landroid/annotation/OppoHook$OppoHookType;->CHANGE_CODE:Landroid/annotation/OppoHook$OppoHookType;
        note = "make notification to oppo\'s"
        property = .enum Landroid/annotation/OppoHook$OppoRomType;->ROM:Landroid/annotation/OppoHook$OppoRomType;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v10, 0x8

    .line 2154
    iget-object v8, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v11, 0x0

    #setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v8, v11}, Landroid/app/Notification$Builder;->access$702(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2160
    const v8, 0xc090423

    invoke-virtual {p0, v8}, Landroid/app/Notification$Style;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 2163
    .local v1, contentView:Landroid/widget/RemoteViews;
    const v8, 0xc020476

    invoke-virtual {v1, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2165
    const/4 v8, 0x7

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    .line 2169
    .local v6, rowIds:[I
    move-object v0, v6

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v5, v0, v3

    .line 2170
    .local v5, rowId:I
    invoke-virtual {v1, v5, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2169
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2174
    .end local v5           #rowId:I
    :cond_0
    const/4 v2, 0x0

    .line 2175
    .local v2, i:I
    :goto_1
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    array-length v8, v6

    if-ge v2, v8, :cond_2

    .line 2176
    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 2177
    .local v7, str:Ljava/lang/CharSequence;
    if-eqz v7, :cond_1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2178
    aget v8, v6, v2

    invoke-virtual {v1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2179
    aget v8, v6, v2

    invoke-virtual {v1, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2181
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2182
    goto :goto_1

    .line 2184
    .end local v7           #str:Ljava/lang/CharSequence;
    :cond_2
    const v11, 0x10208ee

    iget-object v8, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    move v8, v9

    :goto_2
    invoke-virtual {v1, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2187
    const v8, 0x10208ed

    iget-object v11, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v6

    if-le v11, v12, :cond_4

    :goto_3
    invoke-virtual {v1, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2190
    return-object v1

    :cond_3
    move v8, v10

    .line 2184
    goto :goto_2

    :cond_4
    move v9, v10

    .line 2187
    goto :goto_3

    .line 2165
    nop

    :array_0
    .array-data 0x4
        0x7ct 0x4t 0x2t 0xct
        0x7dt 0x4t 0x2t 0xct
        0x7et 0x4t 0x2t 0xct
        0x7ft 0x4t 0x2t 0xct
        0x80t 0x4t 0x2t 0xct
        0x81t 0x4t 0x2t 0xct
        0x82t 0x4t 0x2t 0xct
    .end array-data
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 1
    .parameter "cs"

    .prologue
    .line 2144
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2145
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 2195
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 2196
    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #calls: Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$500(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    .line 2197
    .local v0, wip:Landroid/app/Notification;
    invoke-direct {p0}, Landroid/app/Notification$InboxStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2198
    return-object v0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 0
    .parameter "title"

    .prologue
    .line 2128
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 2129
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .locals 0
    .parameter "cs"

    .prologue
    .line 2136
    invoke-virtual {p0, p1}, Landroid/app/Notification$Style;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 2137
    return-object p0
.end method
