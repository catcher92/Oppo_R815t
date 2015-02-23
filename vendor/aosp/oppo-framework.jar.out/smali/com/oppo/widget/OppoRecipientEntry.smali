.class public Lcom/oppo/widget/OppoRecipientEntry;
.super Ljava/lang/Object;
.source "OppoRecipientEntry.java"


# static fields
.field public static final ENTRY_TYPE_PERSON:I = 0x0

.field public static final ENTRY_TYPE_SIZE:I = 0x2

.field public static final ENTRY_TYPE_WAITING_FOR_DIRECTORY_SEARCH:I = 0x1

.field static final GENERATED_CONTACT:I = -0x2

.field static final INVALID_CONTACT:I = -0x1

.field static final INVALID_DESTINATION_TYPE:I = -0x1

.field public static final WAITING_FOR_DIRECTORY_SEARCH:Lcom/oppo/widget/OppoRecipientEntry;


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDestination:Ljava/lang/String;

.field private final mDestinationLabel:Ljava/lang/String;

.field private final mDestinationType:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mEntryType:I

.field private final mIsDivider:Z

.field private mIsFirstLevel:Z

.field private mPhotoBytes:[B

.field private final mPhotoThumbnailUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/oppo/widget/OppoRecipientEntry;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/oppo/widget/OppoRecipientEntry;-><init>(I)V

    sput-object v0, Lcom/oppo/widget/OppoRecipientEntry;->WAITING_FOR_DIRECTORY_SEARCH:Lcom/oppo/widget/OppoRecipientEntry;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4
    .parameter "entryType"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/oppo/widget/OppoRecipientEntry;->mEntryType:I

    .line 82
    iput-object v1, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDestination:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDestinationType:I

    .line 85
    iput-object v1, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 86
    iput-wide v2, p0, Lcom/oppo/widget/OppoRecipientEntry;->mContactId:J

    .line 87
    iput-wide v2, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDataId:J

    .line 88
    iput-object v1, p0, Lcom/oppo/widget/OppoRecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 89
    iput-object v1, p0, Lcom/oppo/widget/OppoRecipientEntry;->mPhotoBytes:[B

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mIsDivider:Z

    .line 91
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V
    .locals 1
    .parameter "entryType"
    .parameter "displayName"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "photoThumbnailUri"
    .parameter "isFirstLevel"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/oppo/widget/OppoRecipientEntry;->mEntryType:I

    .line 97
    iput-boolean p11, p0, Lcom/oppo/widget/OppoRecipientEntry;->mIsFirstLevel:Z

    .line 98
    iput-object p2, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDisplayName:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDestination:Ljava/lang/String;

    .line 100
    iput p4, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDestinationType:I

    .line 101
    iput-object p5, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDestinationLabel:Ljava/lang/String;

    .line 102
    iput-wide p6, p0, Lcom/oppo/widget/OppoRecipientEntry;->mContactId:J

    .line 103
    iput-wide p8, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDataId:J

    .line 104
    iput-object p10, p0, Lcom/oppo/widget/OppoRecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mPhotoBytes:[B

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mIsDivider:Z

    .line 107
    return-void
.end method

.method public static constructFakeEntry(Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;
    .locals 12
    .parameter "address"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 123
    new-instance v0, Lcom/oppo/widget/OppoRecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p0

    move-wide v8, v6

    move-object v10, v5

    invoke-direct/range {v0 .. v11}, Lcom/oppo/widget/OppoRecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;
    .locals 12
    .parameter "display"
    .parameter "address"

    .prologue
    const-wide/16 v6, -0x2

    const/4 v5, 0x0

    .line 133
    new-instance v0, Lcom/oppo/widget/OppoRecipientEntry;

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move-wide v8, v6

    move-object v10, v5

    invoke-direct/range {v0 .. v11}, Lcom/oppo/widget/OppoRecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static constructSecondLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;
    .locals 12
    .parameter "displayName"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "thumbnailUriAsString"

    .prologue
    .line 155
    new-instance v0, Lcom/oppo/widget/OppoRecipientEntry;

    const/4 v1, 0x0

    if-eqz p8, :cond_0

    invoke-static/range {p8 .. p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_0
    const/4 v11, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lcom/oppo/widget/OppoRecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;)Lcom/oppo/widget/OppoRecipientEntry;
    .locals 12
    .parameter "displayName"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "photoThumbnailUri"

    .prologue
    .line 140
    new-instance v0, Lcom/oppo/widget/OppoRecipientEntry;

    const/4 v1, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lcom/oppo/widget/OppoRecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0
.end method

.method public static constructTopLevelEntry(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)Lcom/oppo/widget/OppoRecipientEntry;
    .locals 12
    .parameter "displayName"
    .parameter "destination"
    .parameter "destinationType"
    .parameter "destinationLabel"
    .parameter "contactId"
    .parameter "dataId"
    .parameter "thumbnailUriAsString"

    .prologue
    .line 147
    new-instance v0, Lcom/oppo/widget/OppoRecipientEntry;

    const/4 v1, 0x0

    if-eqz p8, :cond_0

    invoke-static/range {p8 .. p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_0
    const/4 v11, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lcom/oppo/widget/OppoRecipientEntry;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLandroid/net/Uri;Z)V

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isCreatedRecipient(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 114
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x2

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDataId:J

    return-wide v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDestination:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDestinationLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationType()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDestinationType:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryType()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mEntryType:I

    return v0
.end method

.method public declared-synchronized getPhotoBytes()[B
    .locals 1

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPhotoThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mPhotoThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFirstLevel()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mIsFirstLevel:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mEntryType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeparator()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/oppo/widget/OppoRecipientEntry;->mIsDivider:Z

    return v0
.end method

.method public declared-synchronized setPhotoBytes([B)V
    .locals 1
    .parameter "photoBytes"

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEntry;->mPhotoBytes:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
