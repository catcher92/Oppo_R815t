.class public Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateTimeXmlParseHandler"
.end annotation


# instance fields
.field private mDateString:Ljava/lang/String;

.field private mIsDateFlag:Z

.field private mIsTimeFlag:Z

.field private mIsTimeZoneFlag:Z

.field private mTimeString:Ljava/lang/String;

.field private mTimeZoneString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 559
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 560
    iput-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    .line 561
    iput-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsDateFlag:Z

    .line 562
    iput-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    .line 563
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    .line 564
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 571
    iget-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    if-eqz v0, :cond_1

    .line 573
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsDateFlag:Z

    if-eqz v0, :cond_2

    .line 577
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    goto :goto_0

    .line 579
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 589
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 594
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const-string v0, "TimeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 601
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsDateFlag:Z

    goto :goto_0

    .line 603
    :cond_2
    const-string v0, "Time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    goto :goto_0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mTimeString:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mTimeZoneString:Ljava/lang/String;

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 611
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 617
    const-string v0, "TimeZone"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsTimeZoneFlag:Z

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    const-string v0, "Date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsDateFlag:Z

    goto :goto_0

    .line 625
    :cond_2
    const-string v0, "Time"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iput-boolean v1, p0, Lcom/android/server/NetworkTimeUpdateService$DateTimeXmlParseHandler;->mIsTimeFlag:Z

    goto :goto_0
.end method
