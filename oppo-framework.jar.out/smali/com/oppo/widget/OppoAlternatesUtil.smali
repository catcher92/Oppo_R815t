.class public Lcom/oppo/widget/OppoAlternatesUtil;
.super Ljava/lang/Object;
.source "OppoAlternatesUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoAlternatesUtil$OnCheckedItemChangedListener;
    }
.end annotation


# static fields
.field public static final CONTACT_ID:I = 0x4

.field public static final DATA:I = 0x1

.field public static final DATA_ID:I = 0x5

.field public static final DATA_LABEL:I = 0x3

.field public static final DATA_TYPE:I = 0x2

.field public static final EMAIL_PROJECTION:[Ljava/lang/String; = null

.field public static final NAME:I = 0x0

.field public static final PHOTO_THUMBNAIL_URI:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oppo/widget/OppoAlternatesUtil;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method
