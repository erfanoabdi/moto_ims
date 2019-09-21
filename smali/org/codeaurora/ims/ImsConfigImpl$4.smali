.class Lorg/codeaurora/ims/ImsConfigImpl$4;
.super Ljava/lang/Object;
.source "ImsConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/codeaurora/ims/ImsConfigImpl;->updateWFCMode(Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;

.field final synthetic val$isRoamingMode:Z


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 176
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->val$isRoamingMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWFCMode isRoamingMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->val$isRoamingMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->access$000(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->IsWfcRoamingConfigurationSupportedByModem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string v0, "Modem do not support WFC roaming config"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    return-void

    .line 185
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->val$isRoamingMode:Z

    if-eqz v0, :cond_1

    .line 186
    const/16 v0, 0x4a

    .line 187
    .local v0, "item":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$700(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiRoamingModeSetting()I

    move-result v1

    .local v1, "value":I
    goto :goto_0

    .line 189
    .end local v0    # "item":I
    .end local v1    # "value":I
    :cond_1
    const/16 v0, 0x1b

    .line 190
    .restart local v0    # "item":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$700(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsMmTelManager;->getVoWiFiModeSetting()I

    move-result v1

    .line 193
    .restart local v1    # "value":I
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v0, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->access$1000(Lorg/codeaurora/ims/ImsConfigImpl;II)I

    .line 194
    return-void
.end method
