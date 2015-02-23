.class Lcom/oppo/widget/OppoSingleRecipientArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OppoSingleRecipientArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/oppo/widget/OppoRecipientEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutId:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/oppo/widget/OppoRecipientEntry;)V
    .locals 2
    .parameter "context"
    .parameter "resourceId"
    .parameter "entry"

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oppo/widget/OppoRecipientEntry;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/widget/OppoSingleRecipientArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 40
    iput p2, p0, Lcom/oppo/widget/OppoSingleRecipientArrayAdapter;->mLayoutId:I

    .line 41
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;Lcom/oppo/widget/OppoRecipientEntry;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "entry"

    .prologue
    const/4 v4, 0x0

    .line 57
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, display:Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 59
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {p3}, Lcom/oppo/widget/OppoRecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 61
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, destination:Landroid/widget/TextView;
    invoke-virtual {p3}, Lcom/oppo/widget/OppoRecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oppo/widget/OppoTokenizer;->tokenize(Ljava/lang/CharSequence;)[Lcom/oppo/widget/OppoToken;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/oppo/widget/OppoToken;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method private newView()Landroid/view/View;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oppo/widget/OppoSingleRecipientArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oppo/widget/OppoSingleRecipientArrayAdapter;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 45
    if-nez p2, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/oppo/widget/OppoSingleRecipientArrayAdapter;->newView()Landroid/view/View;

    move-result-object p2

    .line 48
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoRecipientEntry;

    invoke-direct {p0, p2, v1, v0}, Lcom/oppo/widget/OppoSingleRecipientArrayAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/oppo/widget/OppoRecipientEntry;)V

    .line 49
    return-object p2
.end method
