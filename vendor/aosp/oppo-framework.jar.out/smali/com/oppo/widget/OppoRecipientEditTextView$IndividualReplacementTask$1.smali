.class Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask$1;
.super Ljava/lang/Object;
.source "OppoRecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

.field final synthetic val$entry:Lcom/oppo/widget/OppoRecipientEntry;

.field final synthetic val$temp:Lcom/oppo/widget/OppoRecipientChip;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;Lcom/oppo/widget/OppoRecipientChip;Lcom/oppo/widget/OppoRecipientEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2940
    iput-object p1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

    iput-object p2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask$1;->val$temp:Lcom/oppo/widget/OppoRecipientChip;

    iput-object p3, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask$1;->val$entry:Lcom/oppo/widget/OppoRecipientEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;

    iget-object v0, v0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/oppo/widget/OppoRecipientEditTextView;

    iget-object v1, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask$1;->val$temp:Lcom/oppo/widget/OppoRecipientChip;

    iget-object v2, p0, Lcom/oppo/widget/OppoRecipientEditTextView$IndividualReplacementTask$1;->val$entry:Lcom/oppo/widget/OppoRecipientEntry;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/widget/OppoRecipientEditTextView;->replaceChip(Lcom/oppo/widget/OppoRecipientChip;Lcom/oppo/widget/OppoRecipientEntry;)V

    .line 2945
    return-void
.end method
