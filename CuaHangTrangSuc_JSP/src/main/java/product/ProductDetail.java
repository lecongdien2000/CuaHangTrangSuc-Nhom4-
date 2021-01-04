package product;

public class ProductDetail {
    private String trademark;
    private String gender;
    private String description;
    private int rate;
    private boolean isDiamond;
    private boolean isGemstone;
    private boolean isECZ;
    private boolean isPearl;
    private boolean isPlain;
    private boolean isChild;

    public ProductDetail(String trademark, String gender, String description, int rate, boolean isDiamond, boolean isGemstone, boolean isECZ, boolean isPearl, boolean isPlain, boolean isChild) {
        this.trademark = trademark;
        this.gender = gender;
        this.description = description;
        this.rate = rate;
        this.isDiamond = isDiamond;
        this.isGemstone = isGemstone;
        this.isECZ = isECZ;
        this.isPearl = isPearl;
        this.isPlain = isPlain;
        this.isChild = isChild;
    }
    public ProductDetail(){}

    public String getTrademark() {
        return trademark;
    }

    public void setTrademark(String trademark) {
        this.trademark = trademark;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public boolean isDiamond() {
        return isDiamond;
    }

    public void setDiamond(boolean diamond) {
        isDiamond = diamond;
    }

    public boolean isGemstone() {
        return isGemstone;
    }

    public void setGemstone(boolean gemstone) {
        isGemstone = gemstone;
    }

    public boolean isECZ() {
        return isECZ;
    }

    public void setECZ(boolean ECZ) {
        isECZ = ECZ;
    }

    public boolean isPearl() {
        return isPearl;
    }

    public void setPearl(boolean pearl) {
        isPearl = pearl;
    }

    public boolean isPlain() {
        return isPlain;
    }

    public void setPlain(boolean plain) {
        isPlain = plain;
    }

    public boolean isChild() {
        return isChild;
    }

    public void setChild(boolean child) {
        isChild = child;
    }




}
