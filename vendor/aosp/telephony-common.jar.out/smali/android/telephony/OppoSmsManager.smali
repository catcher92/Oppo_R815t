.class public final Landroid/telephony/OppoSmsManager;
.super Ljava/lang/Object;
.source "OppoSmsManager.java"


# static fields
.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field private static final sInstance:Landroid/telephony/OppoSmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/telephony/OppoSmsManager;

    invoke-direct {v0}, Landroid/telephony/OppoSmsManager;-><init>()V

    sput-object v0, Landroid/telephony/OppoSmsManager;->sInstance:Landroid/telephony/OppoSmsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static getDefault()Landroid/telephony/OppoSmsManager;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Landroid/telephony/OppoSmsManager;->sInstance:Landroid/telephony/OppoSmsManager;

    return-object v0
.end method

.method public static oppoGetSmsSimMemoryStatusGemini(I)Landroid/telephony/SmsMemoryStatus;
    .locals 1
    .parameter "simId"

    .prologue
    .line 88
    invoke-static {p0}, Landroid/telephony/gemini/GeminiSmsManager;->getSmsSimMemoryStatusGemini(I)Landroid/telephony/SmsMemoryStatus;

    move-result-object v0

    return-object v0
.end method
