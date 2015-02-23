.class Lcom/oppo/widget/OppoRecipientChip;
.super Landroid/text/style/ImageSpan;
.source "OppoRecipientChip.java"


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDisplay:Ljava/lang/CharSequence;

.field private mEntry:Lcom/oppo/widget/OppoRecipientEntry;

.field private mOriginalText:Ljava/lang/CharSequence;

.field private mSelected:Z

.field private final mValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/oppo/widget/OppoRecipientEntry;I)V
    .locals 2
    .parameter "drawable"
    .parameter "entry"
    .parameter "offset"

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mSelected:Z

    .line 49
    invoke-virtual {p2}, Lcom/oppo/widget/OppoRecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mDisplay:Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {p2}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mValue:Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {p2}, Lcom/oppo/widget/OppoRecipientEntry;->getContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mContactId:J

    .line 52
    invoke-virtual {p2}, Lcom/oppo/widget/OppoRecipientEntry;->getDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mDataId:J

    .line 53
    iput-object p2, p0, Lcom/oppo/widget/OppoRecipientChip;->mEntry:Lcom/oppo/widget/OppoRecipientEntry;

    .line 54
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mContactId:J

    return-wide v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mDataId:J

    return-wide v0
.end method

.method public getDisplay()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mDisplay:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Lcom/oppo/widget/OppoRecipientEntry;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mEntry:Lcom/oppo/widget/OppoRecipientEntry;

    return-object v0
.end method

.method public getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mEntry:Lcom/oppo/widget/OppoRecipientEntry;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/oppo/widget/OppoRecipientChip;->mSelected:Z

    return v0
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    .line 117
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/oppo/widget/OppoRecipientChip;->mSelected:Z

    .line 63
    return-void
.end method
