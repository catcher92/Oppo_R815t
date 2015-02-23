.class Lcom/oppo/csv/OppoCsvReader$CsvConstant;
.super Ljava/lang/Object;
.source "OppoCsvReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/csv/OppoCsvReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CsvConstant"
.end annotation


# static fields
.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_QUOTECHAR:C = '\"'

.field public static final DEFAULT_SEPARATOR:C = ','

.field public static final GBK_CHATSET:Ljava/lang/String; = "GBK"

.field public static final UTF16BE_CHATSET:Ljava/lang/String; = "UTF-16BE"

.field public static final UTF16LE_CHATSET:Ljava/lang/String; = "UTF-16LE"

.field public static final UTF8_CHATSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field final synthetic this$0:Lcom/oppo/csv/OppoCsvReader;


# direct methods
.method private constructor <init>(Lcom/oppo/csv/OppoCsvReader;)V
    .locals 0
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/oppo/csv/OppoCsvReader$CsvConstant;->this$0:Lcom/oppo/csv/OppoCsvReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
