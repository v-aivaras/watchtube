<?php
class VideoDetailsFormProvider {

    private $con;

    public function __construct($con) {
        $this->con = $con;
    }

    public function createUploadForm() {
        $fileInput = $this->createFileInput();
        $titleInput = $this->createTitleInput();
        $descriptionInput = $this->createDescriptionInput();
        $categoriesInput = $this->createCategoriesInput();
        $privacyInput = $this->createPrivacyInput();
        $uploadButton = $this->createUploadButton();

        return "
            <form action='processing.php' method='POST' enctype='multipart/form-data'>
                $fileInput
                $titleInput
                $descriptionInput
                $privacyInput
                $categoriesInput
                $uploadButton
            </form>";
    }

    public function createEditDetailsForm($video) {

        $titleInput = $this->createTitleInput($video->getTitle());
        $descriptionInput = $this->createDescriptionInput($video->getDescription());
        $categoriesInput = $this->createCategoriesInput($video->getCategory());
        $privacyInput = $this->createPrivacyInput($video->getPrivacy());
        $saveButton = $this->createSaveButton();

        return "
            <form method='POST'>
                $titleInput
                $descriptionInput
                $privacyInput
                $categoriesInput
                $saveButton
            </form>";
    }

    private function createSaveButton() {
        return "<button type='submit' class='btn btn-primary' name='saveButton'>Save</button>";
    }

    private function createFileInput() {
        return "
            <div class='form-group'>
                <input type='file' class='form-control-file' id='exampleFormControlFile1' name='fileInput' required>
            </div>";
    }

    private function createTitleInput($value = "") {
        return "
            <div class='form-group'>
                <input class='form-control' type='text' placeholder='Title' name='titleInput' value='$value'>
            </div>";
    }

    private function createDescriptionInput($value = "") {
        return "
            <div class='form-group'>
                <textarea class='form-control' placeholder='Description' name='descriptionInput' rows='3'>$value</textarea>
            </div>";
    }

    private function createPrivacyInput($value = "") {

        $privateSelected = ($value == 0) ? "selected='selected'" : "";
        $publicSelected = ($value == 1) ? "selected='selected'" : "";
        return "
            <div class='form-group'>
                <select class='form-control' name='privacyInput'>
                    <option value='0' $privateSelected>Private</option>
                    <option value='1' $publicSelected>Public</option>
                </select>
            </div>";
    }

    private function createCategoriesInput($value = "") {
        $query = $this->con->prepare("SELECT * FROM categories");
        $query->execute();
        $html = "<div class='form-group'>
                     <select class='form-control' name='categoryInput'>";
        while($row = $query->fetch(PDO::FETCH_ASSOC)) {
            $id = $row["id"];
            $name = $row["name"];
            $selected = ($id == $value) ? "selected='selected'" : "";

            $html .= "<option value='$id' $selected>$name</option>";
        }
        $html .= "</select>
                </div>";
        return $html;
    }
    
    private function createUploadButton() {
        return "<button type='submit' class='btn btn-primary' name='uploadButton'>Upload</button>";
    }
}



?>