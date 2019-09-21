.class Lorg/codeaurora/ims/ImsConfigImpl$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 122
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 7

    .line 125
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 126
    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$000(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 127
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_0

    .line 128
    const-string v1, "onSubscriptionsChanged unable to process due to SubscriptionInfo is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    return-void

    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 134
    .local v1, "subId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSubscriptionsChanged oldSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " new SubId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    if-eq v2, v1, :cond_4

    .line 136
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 137
    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$100(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 141
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$300(Lorg/codeaurora/ims/ImsConfigImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 143
    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$400(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 144
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 145
    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 147
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$202(Lorg/codeaurora/ims/ImsConfigImpl;I)I

    .line 148
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$702(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ims/ImsMmTelManager;)Landroid/telephony/ims/ImsMmTelManager;

    .line 149
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    sget-object v3, Landroid/telephony/SubscriptionManager;->WFC_MODE_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 150
    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$802(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 151
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    sget-object v3, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 152
    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$200(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$902(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 153
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$800(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 154
    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->access$400(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v4

    .line 153
    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 155
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->access$500(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->access$900(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    .line 156
    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->access$600(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v4

    .line 155
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->access$302(Lorg/codeaurora/ims/ImsConfigImpl;Z)Z

    .line 158
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWfcModeConfigurationsToModem()V

    goto :goto_1

    .line 138
    :cond_3
    :goto_0
    const-string v2, "Invalid subscription id"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    return-void

    .line 160
    :cond_4
    :goto_1
    return-void
.end method
