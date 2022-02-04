.class public Lorg/renpy/android/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# instance fields
.field private act:Landroid/app/Activity;

.field private res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/renpy/android/ResourceManager;->act:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lorg/renpy/android/ResourceManager;->res:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lorg/renpy/android/ResourceManager;->res:Landroid/content/res/Resources;

    iget-object v1, p0, Lorg/renpy/android/ResourceManager;->act:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/renpy/android/ResourceManager;->res:Landroid/content/res/Resources;

    const-string v1, "string"

    invoke-virtual {p0, p1, v1}, Lorg/renpy/android/ResourceManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    const-string v0, "id"

    invoke-virtual {p0, p2, v0}, Lorg/renpy/android/ResourceManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public inflateView(Ljava/lang/String;)Landroid/view/View;
    .registers 4

    const-string v0, "layout"

    invoke-virtual {p0, p1, v0}, Lorg/renpy/android/ResourceManager;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lorg/renpy/android/ResourceManager;->act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
