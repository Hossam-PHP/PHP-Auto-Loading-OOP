<?php

namespace Objects;

interface BookInterface {
    public function getAll();
	public function create();
	public function readOne();
	public function readPaging($from_record_num, $records_per_page);
	public function count();

}