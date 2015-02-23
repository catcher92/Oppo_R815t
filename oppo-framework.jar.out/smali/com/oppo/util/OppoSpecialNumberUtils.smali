.class public Lcom/oppo/util/OppoSpecialNumberUtils;
.super Ljava/lang/Object;
.source "OppoSpecialNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/util/OppoSpecialNumberUtils$OppoSpecialNumColumns;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field public static final SPECIAL_NUMBER_CONTENT_URI:Landroid/net/Uri; = null

.field public static final SpecialNumberTable:Ljava/lang/String; = "special_contacts"

.field private static final TAG:Ljava/lang/String; = "OppoSpecialNumberUtils"


# instance fields
.field private final EN_LANGUAGE:I

.field private final TW_LANGUAGE:I

.field private final ZH_LANGUAGE:I

.field private mAreaOfnumber:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mImagedata:[B

.field private mImagedraw:Landroid/graphics/drawable/Drawable;

.field private mLanguage:Ljava/lang/String;

.field private mLanguageInt:I

.field private mLocale:Ljava/util/Locale;

.field private mLogoOfnumber:[Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumberOfserver:[Ljava/lang/String;

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "special_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oppo/util/OppoSpecialNumberUtils;->SPECIAL_NUMBER_CONTENT_URI:Landroid/net/Uri;

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "en_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cn_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tw_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photo_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/util/OppoSpecialNumberUtils;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mNumberOfserver:[Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mAreaOfnumber:[Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLogoOfnumber:[Ljava/lang/String;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mCount:I

    .line 54
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLocale:Ljava/util/Locale;

    .line 56
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->ZH_LANGUAGE:I

    .line 62
    iput v2, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->EN_LANGUAGE:I

    .line 63
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->TW_LANGUAGE:I

    .line 64
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    .line 65
    iput-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedraw:Landroid/graphics/drawable/Drawable;

    .line 100
    iput-object p1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mContext:Landroid/content/Context;

    .line 101
    invoke-direct {p0}, Lcom/oppo/util/OppoSpecialNumberUtils;->getLanguage()V

    .line 102
    return-void
.end method

.method private getLanguage()V
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLocale:Ljava/util/Locale;

    .line 230
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x2

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    const/4 v0, 0x1

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguage:Ljava/lang/String;

    const-string v1, "TWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x3

    iput v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    goto :goto_0
.end method


# virtual methods
.method public getImageOfnumber()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 217
    iget-object v2, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    if-nez v2, :cond_0

    .line 218
    const/4 v1, 0x0

    .line 222
    :goto_0
    return-object v1

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    array-length v4, v4

    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, image:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 222
    .local v1, mImagedraw:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public getInputStreamImageOfnumber()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public getNameOfnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isNumberStoredInContacts(Ljava/lang/String;)Z
    .locals 11
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 173
    const-string v8, "PHONE_NUMBERS_EQUAL(data1, ?) AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    .line 175
    .local v8, newSelection:Ljava/lang/String;
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "display_name"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    .local v6, cursorOriginal:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 193
    .end local v7           #name:Ljava/lang/String;
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 189
    goto :goto_0

    .line 192
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 193
    goto :goto_0
.end method

.method public isSpecialNumber(Ljava/lang/String;)Z
    .locals 12
    .parameter "number"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 125
    const-string v0, "persist.sys.oppo.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 126
    .local v9, region:Ljava/lang/String;
    const-string v0, "TH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v10

    .line 166
    :goto_0
    return v0

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, ""

    if-ne v0, p1, :cond_2

    :cond_1
    move v0, v10

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, mNumber:Ljava/lang/String;
    const-string v8, "PHONE_NUMBERS_EQUAL(data1, ?) AND mimetype = \'vnd.android.cursor.item/phone_v2\'"

    .line 138
    .local v8, newSelection:Ljava/lang/String;
    iget-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oppo/util/OppoSpecialNumberUtils;->SPECIAL_NUMBER_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/oppo/util/OppoSpecialNumberUtils;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 141
    .local v6, cursorOriginal:Landroid/database/Cursor;
    if-eqz v6, :cond_7

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    iget v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    if-ne v0, v11, :cond_4

    .line 144
    const-string v0, "en_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;

    .line 154
    :cond_3
    :goto_1
    const-string v0, "photo_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mImagedata:[B

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 157
    goto :goto_0

    .line 146
    :cond_4
    iget v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 147
    const-string v0, "cn_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_5
    iget v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mLanguageInt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 150
    const-string v0, "tw_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/util/OppoSpecialNumberUtils;->mName:Ljava/lang/String;

    goto :goto_1

    .line 161
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 162
    goto/16 :goto_0

    .line 165
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 166
    goto/16 :goto_0
.end method

.method public numberNeedSpecialHandle(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0, p1}, Lcom/oppo/util/OppoSpecialNumberUtils;->isSpecialNumber(Ljava/lang/String;)Z

    move-result v1

    .line 109
    .local v1, sflag:Z
    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v2

    .line 112
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/util/OppoSpecialNumberUtils;->isNumberStoredInContacts(Ljava/lang/String;)Z

    move-result v0

    .line 113
    .local v0, cflag:Z
    if-eqz v0, :cond_0

    .line 116
    const/4 v2, 0x1

    goto :goto_0
.end method
