.class Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "OppoContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/widget/OppoContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoContactHeaderWidget;


# direct methods
.method public constructor <init>(Lcom/oppo/widget/OppoContactHeaderWidget;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    .line 296
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 297
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 302
    packed-switch p1, :pswitch_data_0

    .line 348
    .end local p2
    :goto_0
    if-eqz p3, :cond_0

    .line 349
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 352
    :cond_0
    return-void

    .line 304
    .restart local p2
    :pswitch_0
    :try_start_0
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    invoke-virtual {v7, p3}, Lcom/oppo/widget/OppoContactHeaderWidget;->bindContactInfo(Landroid/database/Cursor;)V

    .line 305
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    invoke-virtual {v7}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    .end local p2
    :catchall_0
    move-exception v7

    if-eqz p3, :cond_1

    .line 349
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v7

    .line 310
    .restart local p2
    :pswitch_1
    if-eqz p3, :cond_2

    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 311
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 312
    .local v1, contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, lookupKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    invoke-static {v1, v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoContactHeaderWidget;->bindFromContactUri(Landroid/net/Uri;)V

    .line 316
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    check-cast p2, Ljava/lang/String;

    .end local p2
    #setter for: Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;
    invoke-static {v7, p2}, Lcom/oppo/widget/OppoContactHeaderWidget;->access$002(Lcom/oppo/widget/OppoContactHeaderWidget;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    const/4 v8, 0x1

    #setter for: Lcom/oppo/widget/OppoContactHeaderWidget;->mNameIsExisted:Z
    invoke-static {v7, v8}, Lcom/oppo/widget/OppoContactHeaderWidget;->access$102(Lcom/oppo/widget/OppoContactHeaderWidget;Z)Z

    .line 318
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/oppo/widget/OppoContactHeaderWidget;->showButton(ZZ)V

    .line 319
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    #getter for: Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/oppo/widget/OppoContactHeaderWidget;->access$200(Lcom/oppo/widget/OppoContactHeaderWidget;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0xc080423

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 322
    .end local v1           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .restart local p2
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 323
    .local v5, phoneNumber:Ljava/lang/String;
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    const/4 v8, 0x0

    #setter for: Lcom/oppo/widget/OppoContactHeaderWidget;->mNameIsExisted:Z
    invoke-static {v7, v8}, Lcom/oppo/widget/OppoContactHeaderWidget;->access$102(Lcom/oppo/widget/OppoContactHeaderWidget;Z)Z

    .line 324
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/oppo/widget/OppoContactHeaderWidget;->showButton(ZZ)V

    .line 325
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    #getter for: Lcom/oppo/widget/OppoContactHeaderWidget;->mPhoneButton:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/oppo/widget/OppoContactHeaderWidget;->access$200(Lcom/oppo/widget/OppoContactHeaderWidget;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0xc080423

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 326
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    #getter for: Lcom/oppo/widget/OppoContactHeaderWidget;->mNewBuildButton:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/oppo/widget/OppoContactHeaderWidget;->access$300(Lcom/oppo/widget/OppoContactHeaderWidget;)Landroid/widget/ImageView;

    move-result-object v7

    const v8, 0xc080424

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 327
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0xc040409

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, unknownName:Ljava/lang/String;
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8, v5}, Lcom/oppo/widget/OppoContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 329
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    #getter for: Lcom/oppo/widget/OppoContactHeaderWidget;->mPhotoView:Lcom/oppo/widget/OppoQuickContactBadge;
    invoke-static {v7}, Lcom/oppo/widget/OppoContactHeaderWidget;->access$400(Lcom/oppo/widget/OppoContactHeaderWidget;)Lcom/oppo/widget/OppoQuickContactBadge;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v5, v8}, Lcom/oppo/widget/OppoQuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 335
    .end local v5           #phoneNumber:Ljava/lang/String;
    .end local v6           #unknownName:Ljava/lang/String;
    :pswitch_2
    if-eqz p3, :cond_3

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 336
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 337
    .restart local v1       #contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    .restart local v4       #lookupKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    invoke-static {v1, v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oppo/widget/OppoContactHeaderWidget;->bindFromContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 341
    .end local v1           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 342
    .local v3, emailAddress:Ljava/lang/String;
    iget-object v7, p0, Lcom/oppo/widget/OppoContactHeaderWidget$QueryHandler;->this$0:Lcom/oppo/widget/OppoContactHeaderWidget;

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Lcom/oppo/widget/OppoContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
