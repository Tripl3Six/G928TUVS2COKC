.class public Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;
.super Ljava/lang/Object;
.source "WifiShareProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiShareProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiShareProfileApInfo"
.end annotation


# instance fields
.field index:Ljava/lang/String;

.field network:Ljava/lang/String;

.field priority:I

.field ssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->ssid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->index:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->network:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/wifi/WifiShareProfile$WifiShareProfileApInfo;->priority:I

    return-void
.end method
