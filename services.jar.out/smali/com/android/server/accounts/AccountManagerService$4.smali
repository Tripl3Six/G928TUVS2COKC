.class Lcom/android/server/accounts/AccountManagerService$4;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$accountCredentials:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    iput-object p8, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$accountCredentials:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->onResult(Landroid/os/Bundle;)V

    return-void
.end method

.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    # getter for: Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->access$400(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$4;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(I)[Landroid/accounts/Account;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$4;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$accountCredentials:Landroid/os/Bundle;

    invoke-interface {v5, p0, v7, v8}, Landroid/accounts/IAccountAuthenticator;->addAccountFromCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    :cond_0
    monitor-exit v6

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method protected toDebugString(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getAccountCredentialsForClone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$4;->val$account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
